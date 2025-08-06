library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tracking is
    Port ( 
	   clk        : in  std_logic;
           reset      : in  std_logic;
           I_signal   : in  std_logic;
           code_nco   : out std_logic_vector(15 downto 0);
           freq_nco   : out std_logic_vector(15 downto 0);
           phase_nco  : out std_logic_vector(15 downto 0)
	);
end tracking;

architecture Behavioral of tracking is
    signal late_signal, prompt_signal, early_signal : std_logic := '0';


    component work.L1_CA_generator        
    port map (
			clk 		: in std_logic;
			rst		: in std_logic;		
			PRN 		: out std_logic;			
			ENABLE 		: in std_logic;
			valid_out 	: out std_logic;
			epoch 		: out std_logic;
			epoch_advce 	: out std_logic;
			SAT 		: in integer range 0 to 31 -- 32 GPS
        )
    end component;

    component dll
	Port ( 
		clk        : in  std_logic;
               	reset      : in  std_logic;
               	I_signal   : in  std_logic;
               	early_code : in  std_logic;
               	prompt_code: in  std_logic;
               	late_code  : in  std_logic;
               	code_nco   : out std_logic_vector(15 downto 0)
	);
    end component;

    component fll
        Port ( 
		clk             : in  std_logic;
               	reset           : in  std_logic;
               	I_signal        : in  std_logic;
               	previous_signal : in  std_logic;
               	freq_nco        : out std_logic_vector(15 downto 0)
	);
    end component;

    component pll
        Port ( 
		clk             : in  std_logic;
               	reset           : in  std_logic;
               	I_signal        : in  std_logic;
               	previous_signal : in  std_logic;
               	phase_nco       : out std_logic_vector(15 downto 0));
    end component;

begin
    -- Instantiate DLL
    dll_inst : dll
        port map (
            clk => clk,
            reset => reset,
            I_signal => I_signal,
            early_code => early_code,
            prompt_code => prompt_code,
            late_code => late_code,
            code_nco => code_nco
        );

    -- Instantiate FLL
    fll_inst : fll
        port map (
            clk => clk,
            reset => reset,
            I_signal => I_signal,
            previous_signal => previous_signal,
            freq_nco => freq_nco
        );

    -- Instantiate PLL
    pll_inst : pll
        port map (
            clk => clk,
            reset => reset,
            I_signal => I_signal,
            previous_signal => previous_signal,
            phase_nco => phase_nco
        );

    -- Update previous signal for FLL and PLL
    process(clk, reset)
    begin
        if reset = '1' then
            previous_signal <= '0';
        elsif clk'event and clk = '1' then
            late_signal <= early_signal;
        end if;
    end process;

end Behavioral;



