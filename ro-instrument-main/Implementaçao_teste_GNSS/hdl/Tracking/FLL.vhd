library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fll is
	generic( 
		WIDTH : integer := 16
	)
	Port ( 
		clk             : in  std_logic;
		reset           : in  std_logic;
		I_signal        : in  std_logic;
		freq_nco        : out std_logic_vector(WIDTH-1 downto 0)
	);
end fll;

architecture Behavioral of fll is
	signal control_signal, freq_error : std_logic_vector(WIDTH-1 downto 0);

	component Loop_filter 
	generic(
		WIDTH : integer := WIDTH
		)
	Port ( 
		clk             : in  std_logic;
		reset           : in  std_logic;
		freq_error      : in  std_logic_vector(WIDTH-1 downto 0);
		filtered_out    : out std_logic_vector(WIDTH-1 downto 0)
	);
	end component;

	component Frequency_Discriminator 
	generic(
		WIDTH : integer := WIDTH
		)
	Port ( 
		clk             : in  std_logic;
		reset      	: in  std_logic;
		input_signal 	: in  std_logic;
		freq_error      : out std_logic_vector(WIDTH-1 downto 0)
	);
	end component;

	component DCO 
		generic(
			control_width : integer := WIDTH
		)
		Port ( 
			clk             : in  	std_logic;
			reset           : in  	std_logic;
			control_input   : in 	std_logic_vector(control_width-1 downto 0);
			dco_out   	: out 	std_logic
		);
	end component;

begin

	Freq_discr: Frequency_Discriminator generic map (WIDTH => WIDTH)
		port map (clk => clk, reset => reset, input_signal => I_signal, freq_error => freq_error);

	Loop_filt: Loop_filter generic map (WIDTH => WIDTH)
		port map (clk => clk, reset => reset, freq_error => freq_error, filtered_out => control_signal);

	DCO_inst: DCO generic map (control_width => WIDTH)
		port map (clk => clk, reset => reset, control_input => control_signal, dco_out => freq_nco);

end Behavioral;
