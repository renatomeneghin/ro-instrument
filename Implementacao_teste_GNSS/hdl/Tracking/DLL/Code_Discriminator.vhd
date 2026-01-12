--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: Code_Discriminator.vhd
-- File history:
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--
-- Description: 
--
-- <Description here>
--
-- Targeted device: <Family::PolarFireSoC> <Die::MPFS025T> <Package::FCSG325>
-- Author: <Name>
--
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;   
use ieee.std_logic_arith.all;

entity Code_Discriminator_DP is
generic (
    DATA_WIDTH : integer := 32;
    DISC_TYPE  : integer := 0
    -- 0 = Early-Late Power        : (E - L)
    -- 1 = Normalized E-L          : (E - L)/(E + L)
    -- 2 = Prompt-assisted        : (E - L)/P
    -- 3 = Extended normalization : (E - L)/(E + L + P)
);
port (
    clk : in std_logic;
    rst : in std_logic;

    ------------------------------------------------------------------
    -- Correlator inputs (signed, two's complement)
    ------------------------------------------------------------------
    IE : in std_logic_vector(DATA_WIDTH-1 downto 0);
    QE : in std_logic_vector(DATA_WIDTH-1 downto 0);

    IL : in std_logic_vector(DATA_WIDTH-1 downto 0);
    QL : in std_logic_vector(DATA_WIDTH-1 downto 0);

    IP : in std_logic_vector(DATA_WIDTH-1 downto 0);
    QP : in std_logic_vector(DATA_WIDTH-1 downto 0);

    ------------------------------------------------------------------
    -- Control interface (from controller FSM)
    ------------------------------------------------------------------
    mul_sel  : in std_logic_vector(1 downto 0);  -- selects correlator: 00=Early, 01=Late, 10=Prompt
    mul_go   : in std_logic;
    mul_done : out std_logic;

    add_en   : in std_logic;

    div_start : in std_logic;
    div_done  : out std_logic;

    ------------------------------------------------------------------
    -- Output
    ------------------------------------------------------------------
    err_out : out std_logic_vector(DATA_WIDTH-1 downto 0)
);
end entity;


architecture architecture_Code_Discriminator_DP of Code_Discriminator_DP is

    ------------------------------------------------------------------
    -- Type declarations
    ------------------------------------------------------------------
    type corr_array_t is array (0 to 2) of std_logic_vector(DATA_WIDTH-1 downto 0);
    type iq_array_t   is array (0 to 1) of std_logic_vector(DATA_WIDTH-1 downto 0);
    type mul_array_t  is array (0 to 1) of std_logic_vector(DATA_WIDTH-1 downto 0);

    ------------------------------------------------------------------
    -- Correlator arrays
    ------------------------------------------------------------------
    signal I_corr : corr_array_t;  -- 0=E, 1=L, 2=P
    signal Q_corr : corr_array_t;

    ------------------------------------------------------------------
    -- Selected correlator (I/Q)
    ------------------------------------------------------------------
    signal corr_sel_iq : iq_array_t;

    ------------------------------------------------------------------
    -- Multiplier signals
    ------------------------------------------------------------------
    signal mul_idle : std_logic_vector(1 downto 0);
    signal mul_out  : mul_array_t;

    ------------------------------------------------------------------
    -- Magnitudes
    ------------------------------------------------------------------
    signal mag_out: corr_array_t;
    signal mag_sum : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal mag_L_n : std_logic_vector(DATA_WIDTH-1 downto 0);

    ------------------------------------------------------------------
    -- Arithmetic results
    ------------------------------------------------------------------
    signal diff_EL : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal den_val : std_logic_vector(DATA_WIDTH-1 downto 0);
    
    ------------------------------------------------------------------
    -- mul register
    ------------------------------------------------------------------    
    signal mag_dest : std_logic_vector(1 downto 0); 
    signal NRST : std_logic;
    
    ------------------------------------------------------------------
    -- Aliases
    ------------------------------------------------------------------
    
    alias mag_E : std_logic_vector(DATA_WIDTH-1 downto 0) is mag_out(0);
    alias mag_L : std_logic_vector(DATA_WIDTH-1 downto 0) is mag_out(1);
    alias mag_P : std_logic_vector(DATA_WIDTH-1 downto 0) is mag_out(2);    
    
begin

    ------------------------------------------------------------------
    -- Compile-time check
    ------------------------------------------------------------------
    assert (DISC_TYPE >= 0 and DISC_TYPE <= 3)
        report "Illegal DISC_TYPE value"
        severity FAILURE;

    ------------------------------------------------------------------
    -- Correlator packing
    ------------------------------------------------------------------
    I_corr(0) <= IE;
    Q_corr(0) <= QE;

    I_corr(1) <= IL;
    Q_corr(1) <= QL;

    I_corr(2) <= IP;
    Q_corr(2) <= QP;

    ------------------------------------------------------------------
    -- Correlator selector (explicit mux, no conversions)
    ------------------------------------------------------------------
    process(I_corr, Q_corr, mul_sel)
    begin
        -- default assignments (avoid latches)
        corr_sel_iq(0) <= (others => '0');
        corr_sel_iq(1) <= (others => '0');

        case mul_sel is
            when "00" =>  -- Early
                corr_sel_iq(0) <= I_corr(0);
                corr_sel_iq(1) <= Q_corr(0);

            when "01" =>  -- Late
                corr_sel_iq(0) <= I_corr(1);
                corr_sel_iq(1) <= Q_corr(1);

            when "10" =>  -- Prompt
                corr_sel_iq(0) <= I_corr(2);
                corr_sel_iq(1) <= Q_corr(2);

            when others =>
                -- safe default (or hold previous if desired)
                corr_sel_iq(0) <= (others => '0');
                corr_sel_iq(1) <= (others => '0');
        end case;
    end process;
    
    ------------------------------------------------------------------
    -- Two multipliers: I² and Q²
    ------------------------------------------------------------------
    gen_mult : for k in 0 to 1 generate
        MULT : entity work.Multiplier
        generic map (
            data_width => DATA_WIDTH
        )
        port map (
            go   => mul_go,
            clk  => clk,
            rst  => rst,
            idle => mul_idle(k),
            A    => corr_sel_iq(k),
            B    => corr_sel_iq(k),
            MSB  => open,
            LSB  => mul_out(k)
        );
    end generate;

    ------------------------------------------------------------------
    -- Multiplier done (both idle)
    ------------------------------------------------------------------
    mul_done <= mul_idle(0) and mul_idle(1);

    ------------------------------------------------------------------
    -- I² + Q²
    ------------------------------------------------------------------
    ADD_MAG : entity work.UAL
        generic map ( data_width => DATA_WIDTH )
        port map (
            A    => mul_out(0),
            B    => mul_out(1),
            Cin  => '0',
            S    => mag_sum,      -- captured by controller
            Cout => open
        );
        
    MAG_SEL: for i in 0 to 1 generate 
    DFF: entity work.Flip_Flop_D_en
    port map(	
        D       => mul_sel(i),
        rst     => NRST,
        clk     => clk,
        en      => mul_go,
        Q       => mag_dest(i)
    );
    end generate;
        
    process(clk, rst, mag_dest)
    begin
        if rst = '1' then
            mag_out(0) <= (others => '0');
            mag_out(1) <= (others => '0');
            mag_out(2) <= (others => '0');

        elsif clk'event and clk = '1' then
            if add_en = '1' then
                case mag_dest is
                    when "00" =>  -- Early
                        mag_out(0) <= mag_sum;

                    when "01" =>  -- Late
                        mag_out(1) <= mag_sum;

                    when "10" =>  -- Prompt
                        mag_out(2) <= mag_sum;

                    when others =>
                        null;
                end case;
            end if;
        end if;
    end process;

    ------------------------------------------------------------------
    -- E - L
    ------------------------------------------------------------------
    SUB_EL : entity work.UAL
        generic map ( data_width => DATA_WIDTH )
        port map (
            A    => mag_E,
            B    => mag_L_n,
            Cin  => '1',
            S    => diff_EL,
            Cout => open
        );
    mag_L_n <= not mag_L;
    ------------------------------------------------------------------
    -- Denominator selection (DISC_TYPE)
    ------------------------------------------------------------------
    gen_den_0 : if DISC_TYPE = 0 generate
        den_val <= (others => '0');
    end generate;

    gen_den_1 : if DISC_TYPE = 1 generate
        DEN_EL : entity work.UAL
            generic map ( data_width => DATA_WIDTH )
            port map (
                A    => mag_E,
                B    => mag_L,
                Cin  => '0',
                S    => den_val,
                Cout => open
            );
    end generate;

    gen_den_2 : if DISC_TYPE = 2 generate
        den_val <= mag_P;
    end generate;

    gen_den_3 : if DISC_TYPE = 3 generate
        signal sum_EL : std_logic_vector(DATA_WIDTH-1 downto 0);
    begin
        ADD_EL : entity work.UAL
            generic map ( data_width => DATA_WIDTH )
            port map (
                A    => mag_E,
                B    => mag_L,
                Cin  => '0',
                S    => sum_EL,
                Cout => open
            );

        ADD_ELP : entity work.UAL
            generic map ( data_width => DATA_WIDTH )
            port map (
                A    => sum_EL,
                B    => mag_P,
                Cin  => '0',
                S    => den_val,
                Cout => open
            );
    end generate;

    ------------------------------------------------------------------
    -- Divider (only when needed)
    ------------------------------------------------------------------
    gen_div : if DISC_TYPE /= 0 generate
        DIV : entity work.Divider_Signed
            generic map ( WIDTH => DATA_WIDTH )
            port map (
                clk   => clk,
                rst   => rst,
                start => div_start,
                num   => diff_EL,
                den   => den_val,
                quot  => err_out,
                rema  => open,
                idle  => div_done
            );
    end generate;

    gen_no_div : if DISC_TYPE = 0 generate
        err_out  <= diff_EL;
        div_done <= '1';
    end generate;
    
    NRST <= not rst;

end architecture_Code_Discriminator_DP;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;   
use ieee.std_logic_arith.all;

entity Code_Discriminator_CTRL is
generic (
    DISC_TYPE : integer := 0
);
port (
    clk : in std_logic;
    rst : in std_logic;
    start : in std_logic;

    ------------------------------------------------------------------
    -- Handshake from datapath
    ------------------------------------------------------------------
    mul_done : in std_logic;
    div_done : in std_logic;

    ------------------------------------------------------------------
    -- Control outputs to datapath
    ------------------------------------------------------------------
    mul_sel   : out std_logic_vector(1 downto 0);
    mul_go    : out std_logic;

    add_en    : out std_logic;

    div_start : out std_logic;

    done      : out std_logic
);
end Code_Discriminator_CTRL;

architecture rtl of Code_Discriminator_CTRL is

    type state_t is (
        IDLE,

        MAG_E,
        MAG_L,
        MAG_P,

        NUM_READY,

        START_DIV,
        WAIT_DIV,

        DONE_ST
    );

    signal state, next_state : state_t;

begin

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
    -- FSM control logic
    ------------------------------------------------------------------
    process(state, start, mul_done, div_done)
    begin
        -- defaults
        mul_go    <= '0';
        mul_sel   <= (others => '0');
        add_en    <= '0';
        div_start <= '0';
        done      <= '0';

        next_state <= state;

        case state is

            ----------------------------------------------------------
            when IDLE =>
                if start = '1' then
                    mul_sel <= "00"; -- Early
                    mul_go  <= '1';  -- this latches mul_sel into datapath
                    next_state <= MAG_E;
                end if;

            ----------------------------------------------------------
            when MAG_E =>
                if mul_done = '1' then
                    add_en  <= '1';
                    mul_sel <= "01"; -- Late
                    mul_go  <= '1';  -- this latches mul_sel into datapath
                    next_state <= MAG_L;
                end if;

            ----------------------------------------------------------
            when MAG_L =>
                if mul_done = '1' then
                    add_en <= '1';

                    if DISC_TYPE = 2 or DISC_TYPE = 3 then
                        mul_sel <= "10"; -- Prompt
                        mul_go  <= '1';  -- this latches mul_sel into datapath
                        next_state <= MAG_P;
                    else
                        next_state <= NUM_READY;
                    end if;
                end if;

            ----------------------------------------------------------
            when MAG_P =>
                if mul_done = '1' then
                    add_en <= '1';
                    next_state <= NUM_READY;
                end if;

            ----------------------------------------------------------
            when NUM_READY =>
                if DISC_TYPE = 0 then
                    next_state <= DONE_ST;
                else
                    div_start <= '1';
                    next_state <= START_DIV;
                end if;

            ----------------------------------------------------------
            when START_DIV =>
                next_state <= WAIT_DIV;

            when WAIT_DIV =>
                if div_done = '1' then
                    next_state <= DONE_ST;
                end if;

            ----------------------------------------------------------
            when DONE_ST =>
                done <= '1';
                next_state <= IDLE;

        end case;
    end process;

end architecture rtl;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;   
use ieee.std_logic_arith.all;

entity Code_Discriminator is
generic (
    DATA_WIDTH : integer := 32;
    DISC_TYPE  : integer := 0
);
port (
    clk   : in std_logic;
    rst   : in std_logic;
    start : in std_logic;

    ------------------------------------------------------------------
    -- Correlator inputs (signed, two's complement)
    ------------------------------------------------------------------
    IE : in std_logic_vector(DATA_WIDTH-1 downto 0);
    QE : in std_logic_vector(DATA_WIDTH-1 downto 0);

    IL : in std_logic_vector(DATA_WIDTH-1 downto 0);
    QL : in std_logic_vector(DATA_WIDTH-1 downto 0);

    IP : in std_logic_vector(DATA_WIDTH-1 downto 0);
    QP : in std_logic_vector(DATA_WIDTH-1 downto 0);

    ------------------------------------------------------------------
    -- Output
    ------------------------------------------------------------------
    err_out : out std_logic_vector(DATA_WIDTH-1 downto 0);
    done    : out std_logic
);
end Code_Discriminator;

architecture architecture_Code_Discriminator of Code_Discriminator is

    ------------------------------------------------------------------
    -- Control ? Datapath signals
    ------------------------------------------------------------------
    signal mul_sel    : std_logic_vector(2 downto 0);
    signal mul_go     : std_logic;
    signal mul_done   : std_logic;

    signal add_en     : std_logic;
    signal sub_en     : std_logic;

    signal div_start  : std_logic;
    signal div_done   : std_logic;

begin

    ------------------------------------------------------------------
    -- Controller
    ------------------------------------------------------------------
    CTRL : entity work.Code_Discriminator_CTRL
    generic map (
        DISC_TYPE => DISC_TYPE
    )
    port map (
        clk       => clk,
        rst       => rst,
        start     => start,

        mul_done  => mul_done,
        div_done  => div_done,

        mul_sel   => mul_sel,
        mul_go    => mul_go,

        add_en    => add_en,

        div_start => div_start,
        done      => done
    );

    ------------------------------------------------------------------
    -- Datapath
    ------------------------------------------------------------------
    DP : entity work.Code_Discriminator_DP
    generic map (
        DATA_WIDTH => DATA_WIDTH,
        DISC_TYPE  => DISC_TYPE
    )
    port map (
        clk       => clk,
        rst       => rst,

        IE        => IE,
        QE        => QE,
        IL        => IL,
        QL        => QL,
        IP        => IP,
        QP        => QP,

        mul_sel   => mul_sel,
        mul_go    => mul_go,
        mul_done  => mul_done,

        add_en    => add_en,

        div_start => div_start,
        div_done  => div_done,

        err_out   => err_out
    );

end architecture_Code_Discriminator;
