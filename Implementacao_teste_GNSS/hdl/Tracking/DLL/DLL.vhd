library IEEE;
use IEEE.STD_LOGIC_1164.ALL;   
use ieee.numeric_std.all;

entity DLL is
generic (
    ------------------------------------------------------------------
    -- Precision
    ------------------------------------------------------------------
    DATA_WIDTH : integer := 32;
    PHASE_W    : integer := 24;
    CNT_WIDTH  : integer := 6;
    
------------------------------------------------------------------
    -- DLL Discriminator
    ------------------------------------------------------------------
    DISC_TYPE : integer := 0;
    ------------------------------------------------------------------
    -- Loop filter configuration
    ------------------------------------------------------------------
    KP_SHIFT   : integer := 2;
    KI_SHIFT   : integer := 6;
    KD_SHIFT   : integer := 0;

    USE_P      : boolean := true;
    USE_I      : boolean := true;
    USE_D      : boolean := false    
);
port (
    clk       : in  std_logic;
    rst       : in  std_logic;

    -- Correlator outputs (from tracking channels)
    IE, QE : in std_logic_vector(DATA_WIDTH-1 downto 0);
    IP, QP : in std_logic_vector(DATA_WIDTH-1 downto 0);
    IL, QL : in std_logic_vector(DATA_WIDTH-1 downto 0);
    ------------------------------------------------------------------
    -- Lock detector thresholds
    ------------------------------------------------------------------
    LOCK_TH    : in std_logic_vector(DATA_WIDTH-1 downto 0);
    UNLOCK_TH  : in std_logic_vector(DATA_WIDTH-1 downto 0);
    
    SAT     : in std_logic_vector(4 downto 0);
    -- Outputs
    code_lock : out std_logic
);
end DLL;
architecture Behavioral of DLL is
    -- ================================
    -- Internal signals
    -- ================================
    signal chip_en_1x  : std_logic;
    signal chip_en_2x  : std_logic;

    signal early_code  : std_logic;
    signal prompt_code : std_logic;
    signal late_code   : std_logic;

    signal err_code    : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal phase_inc   : std_logic_vector(DATA_WIDTH-1 downto 0);
    
    signal SAT_int : integer range 0 to 31;
    
    signal code_lock_i : std_logic;
	
begin
    -- ================================
    -- PRN generator (E/P/L)
    -- ================================
    PRN_GEN : entity work.PRN_Early_Prompt_Late
        port map (
            clk         => clk,
            reset       => rst,
            chip_en_1x  => chip_en_1x,
            chip_en_2x  => chip_en_2x,
            early_code  => early_code,
            prompt_code => prompt_code,
            late_code   => late_code,
            valid_out   => open,
            SAT         => SAT_int
        );
    SAT_int <= to_integer(unsigned(SAT));
    -- ================================
    -- Correlators (I/Q not shown here)
    -- ================================
    -- You already have these blocks

    -- ================================
    -- Code discriminator
    -- ================================
    DISCR : entity work.Code_Discriminator
        generic map (
            DATA_WIDTH => DATA_WIDTH,
            DISC_TYPE  => DISC_TYPE
        )
        port map (
            clk      => clk,
            rst      => rst,
            IE       => IE,
            QE       => QE,
            IL       => IL,
            QL       => QL,
            IP       => IP,
            QP       => QP,
            err_out  => err_code
        );

    -- ================================
    -- Loop filter (PI)
    -- ================================
    U_LOOP_FILTER : entity work.Loop_filter
        generic map (
            WIDTH     => DATA_WIDTH,
            KP_SHIFT  => KP_SHIFT,
            KI_SHIFT  => KI_SHIFT,
            KD_SHIFT  => KD_SHIFT,
            USE_P     => USE_P,
            USE_I     => USE_I,
            USE_D     => USE_D
        )
        port map (
            clk          => clk,
            reset        => rst,
            update       => chip_en_1x,
            input_error  => err_code,
            filtered_out => phase_inc
        );

    -- ================================
    -- DCO / NCO
    -- ================================
    DCO_INST : entity work.DCO
        generic map (
            PHASE_W => PHASE_W
        )
        port map (
            clk         => clk,
            reset       => rst,
            phase_inc   => phase_inc(PHASE_W-1 downto 0),
            chip_en_1x  => chip_en_1x,
            chip_en_2x  => chip_en_2x
        );

    -- ================================
    -- Code lock detector
    -- ================================
    LOCK_DET : entity work.Code_Lock_Detector
        generic map (
            DATA_WIDTH => DATA_WIDTH,
            CNT_WIDTH  => CNT_WIDTH
        )
        port map (
            clk        => clk,
            rst        => rst,
            chip_en    => chip_en_1x,
            err_in     => err_code,
            lock_th    => LOCK_TH,
            unlock_th  => UNLOCK_TH,
            code_lock  => code_lock_i
        );

    code_lock <= code_lock_i;
    
    assert (DISC_TYPE >= 0 and DISC_TYPE <= 3)
    report "Illegal DISC_TYPE"
    severity FAILURE;
    
    assert not (USE_D = true and KD_SHIFT = 0)
    report "Derivative enabled with zero shift"
    severity WARNING;

end Behavioral;
