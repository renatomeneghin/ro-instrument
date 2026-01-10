library IEEE;
use IEEE.STD_LOGIC_1164.ALL;   
use ieee.std_logic_arith.all;

entity PLL_Discriminator_DP is
generic (
    DATA_WIDTH : integer := 32
);
port (
    clk : in std_logic;
    rst : in std_logic;

    IP  : in std_logic_vector(DATA_WIDTH-1 downto 0);
    QP  : in std_logic_vector(DATA_WIDTH-1 downto 0);

    disc_sel  : in std_logic_vector(1 downto 0);  -- selects discriminator
    mul_go    : in std_logic;
    mul_done  : out std_logic;

    div_start : in std_logic;
    div_done  : out std_logic;

    disc_out  : out std_logic_vector(DATA_WIDTH-1 downto 0)
);
end entity;

architecture rtl of PLL_Discriminator_DP is

    ------------------------------------------------------------------
    -- Internal signals
    ------------------------------------------------------------------
    signal IP_neg, QP_neg : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal IP_abs, Costas : std_logic_vector(DATA_WIDTH-1 downto 0);

    signal mul_out        : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal mul_idle       : std_logic;

    signal div_num        : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal div_den        : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal div_out        : std_logic_vector(DATA_WIDTH-1 downto 0);

begin

    ------------------------------------------------------------------
    -- Negation blocks
    ------------------------------------------------------------------
    NEG_IP : entity work.Negative_Integer
        generic map (data_width => DATA_WIDTH)
        port map (SIG_IN => IP, SIG_OUT => IP_neg);

    NEG_QP : entity work.Negative_Integer
        generic map (data_width => DATA_WIDTH)
        port map (SIG_IN => QP, SIG_OUT => QP_neg);

    Costas <= QP when IP(DATA_WIDTH-1) = '0' else QP_neg;
    ------------------------------------------------------------------
    -- |IP|
    ------------------------------------------------------------------
    IP_abs <= IP when IP(DATA_WIDTH-1) = '0' else IP_neg;

    ------------------------------------------------------------------
    -- Multiplier: IP × QP
    ------------------------------------------------------------------
    MUL : entity work.Multiplier
        generic map (data_width => DATA_WIDTH)
        port map (
            clk  => clk,
            rst  => rst,
            go   => mul_go,
            A    => IP,
            B    => QP,
            idle => mul_idle,
            MSB  => open,
            LSB  => mul_out
        );

    mul_done <= mul_idle;

    ------------------------------------------------------------------
    -- Divider input selection
    ------------------------------------------------------------------
    div_num <= QP;

    div_den <=
        IP_abs when disc_sel = "10" else -- normalized Costas
        IP;                               -- atan approx

    ------------------------------------------------------------------
    -- Divider
    ------------------------------------------------------------------
    DIV : entity work.Divider_Signed
        generic map (WIDTH => DATA_WIDTH)
        port map (
            clk   => clk,
            rst   => rst,
            start => div_start,
            num   => div_num,
            den   => div_den,
            quot  => div_out,
            rema  => open,
            done_op  => div_done
        );

    ------------------------------------------------------------------
    -- Output mux
    ------------------------------------------------------------------
    with disc_sel select
    disc_out <=
        Costas  when "00",  -- Costas sign handled by control
        mul_out when "01",  -- IP × QP
        div_out when "10",  -- QP / |IP|
        div_out when "11",  -- QP / IP
        (others => '0') when others;

end architecture;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;   
use ieee.std_logic_arith.all;

entity PLL_Discriminator_CTRL is
generic (
    DATA_WIDTH : integer := 32;
    I_MIN      : std_logic_vector(DATA_WIDTH-1 downto 0)
);
port (
    clk       : in  std_logic;
    rst       : in  std_logic;
    start     : in  std_logic;

    disc_sel  : in  std_logic_vector(1 downto 0);

    -- Datapath handshakes
    mul_done  : in  std_logic;
    div_done  : in  std_logic;

    IP_abs    : in  std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Control outputs
    mul_go    : out std_logic;
    div_start : out std_logic;

    done_p    : out std_logic
);
end entity;

architecture rtl of PLL_Discriminator_CTRL is

    type state_t is (
        IDLE,
        START_MUL,
        WAIT_MUL,
        START_DIV,
        WAIT_DIV,
        BYPASS,
        DONE
    );

    signal state, next_state : state_t;
    signal I_zero : std_logic;

begin

    ------------------------------------------------------------------
    -- I ˜ 0 detector
    ------------------------------------------------------------------
    I_zero <= '1' when IP_abs < I_MIN else '0';

    ------------------------------------------------------------------
    -- State register
    ------------------------------------------------------------------
    process(clk, rst)
    begin
        if rst = '1' then
            state <= IDLE;
        elsif clk'event and clk = '1' then
            state <= next_state;
        end if;
    end process;

    ------------------------------------------------------------------
    -- FSM logic
    ------------------------------------------------------------------
    process(state, start, disc_sel, mul_done, div_done, I_zero)
    begin
        -- Defaults
        mul_go    <= '0';
        div_start <= '0';
        done_p      <= '0';
        next_state <= state;

        case state is

            ----------------------------------------------------------
            when IDLE =>
                if start = '1' then
                    case disc_sel is
                        when "00" =>  -- Costas sign
                            next_state <= DONE;

                        when "01" =>  -- IP × QP
                            next_state <= START_MUL;

                        when "10" | "11" => -- division modes
                            if I_zero = '1' then
                                next_state <= BYPASS;
                            else
                                next_state <= START_DIV;
                            end if;

                        when others =>
                            next_state <= DONE;
                    end case;
                end if;

            ----------------------------------------------------------
            when START_MUL =>
                mul_go <= '1';
                next_state <= WAIT_MUL;

            when WAIT_MUL =>
                if mul_done = '1' then
                    next_state <= DONE;
                end if;

            ----------------------------------------------------------
            when START_DIV =>
                div_start <= '1';
                next_state <= WAIT_DIV;

            when WAIT_DIV =>
                if div_done = '1' then
                    next_state <= DONE;
                end if;

            ----------------------------------------------------------
            -- Division suppressed (I ˜ 0)
            ----------------------------------------------------------
            when BYPASS =>
                next_state <= DONE;

            ----------------------------------------------------------
            when DONE =>
                done_p <= '1';
                next_state <= IDLE;

        end case;
    end process;

end architecture;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;   
use ieee.std_logic_arith.all;

entity PLL_Discriminator is
    generic (
        DATA_WIDTH : integer := 32;
        I_MIN      : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0')
    );
    port (
        clk   : in  std_logic;
        rst   : in  std_logic;

        -- Prompt correlators
        IP    : in  std_logic_vector(DATA_WIDTH-1 downto 0);
        QP    : in  std_logic_vector(DATA_WIDTH-1 downto 0);

        -- Control
        start     : in  std_logic;                 -- new integration ready
        disc_sel  : in  std_logic_vector(1 downto 0);

        -- Outputs
        pll_err   : out std_logic_vector(DATA_WIDTH-1 downto 0);
        pll_valid : out std_logic
    );
end PLL_Discriminator;

architecture rtl of PLL_Discriminator is

    ------------------------------------------------------------------
    -- Internal signals
    ------------------------------------------------------------------
    signal mul_go_s     : std_logic;
    signal mul_done_s   : std_logic;

    signal div_start_s  : std_logic;
    signal div_done_s   : std_logic;

    signal disc_out_s   : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal done_p_s     : std_logic;

    signal IP_abs_s     : std_logic_vector(DATA_WIDTH-1 downto 0);

begin

    ------------------------------------------------------------------
    -- |IP|
    ------------------------------------------------------------------

    ------------------------------------------------------------------
    -- Datapath
    ------------------------------------------------------------------
    DP : entity work.PLL_Discriminator_DP
        generic map (
            DATA_WIDTH => DATA_WIDTH
        )
        port map (
            clk       => clk,
            rst       => rst,

            IP        => IP,
            QP        => QP,

            disc_sel  => disc_sel,

            mul_go    => mul_go_s,
            mul_done  => mul_done_s,

            div_start => div_start_s,
            div_done  => div_done_s,

            disc_out  => disc_out_s
        );

    ------------------------------------------------------------------
    -- Control FSM
    ------------------------------------------------------------------
    CTRL : entity work.PLL_Discriminator_CTRL
        generic map (
            DATA_WIDTH => DATA_WIDTH,
            I_MIN      => I_MIN
        )
        port map (
            clk       => clk,
            rst       => rst,
            start     => start,

            disc_sel  => disc_sel,

            mul_done  => mul_done_s,
            div_done  => div_done_s,

            IP_abs    => IP_abs_s,

            mul_go    => mul_go_s,
            div_start => div_start_s,

            done_p    => done_p_s
        );

    ------------------------------------------------------------------
    -- Outputs
    ------------------------------------------------------------------
    pll_err   <= disc_out_s;
    pll_valid <= done_p_s;

end architecture;


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;   
--use ieee.std_logic_arith.all;
--use ieee.math_real.all;
--
--entity Phase_Discriminator is
	--generic(
		--Discriminator_Type : natural := 1 
	--);
	--Port (
		--I_signal 	: in  real;
		--Q_signal	: in  real;
		--discriminator   : out real
	--);
--end Code_Discriminator;
--
--architecture Behavioral of Code_Discriminator is
	--
--begin
	--Discriminator_1: if Discriminator_Type = 1 generate
		--discriminator <= sign(I_signal)*Q_signal;
	--end generate Discriminator_1;
--
	--Discriminator_2: if Discriminator_Type = 2 generate
		--discriminator <= I_signal*Q_signal;
	--end generate Discriminator_2;
--
	--Discriminator_3: if Discriminator_Type = 3 generate
		--discriminator <= atan2(Q_signal,I_signal);
	--end generate Discriminator_3;
--end Behavioral;
