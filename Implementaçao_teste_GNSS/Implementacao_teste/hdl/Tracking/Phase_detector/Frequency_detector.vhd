library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Frequency_Detector is
	generic(
		WIDTH : integer := 16
		)
	Port ( 
		clk             : in  std_logic;
		reset      	: in  std_logic;
		ref_signal      : in  std_logic;
		input_signal 	: in  std_logic;
		phase_error     : out std_logic_vector(WIDTH-1 downto 0)
	);
end Frequency_Detector;

architecture Behavioral of Frequency_Detector is
	signal Cont1_reset, Cont2_reset	: std_logic;
	signal input_period, ref_period, freq_diff	: std_logic_vector(WIDTH-1 downto 0);

	component contador 
	generic(
		data_width : integer := 16;
		reset_bit  : std_logic := '0'
	);
	port(	
		clk: 	in std_logic;
		rst:	in std_logic;
		en:	in std_logic;
		dir:	in std_logic;
		count:	out std_logic_vector(data_width-1 downto 0)
	);
	end component;

	component adder 
	generic(
		data_width : integer := 16
	);
	port(	
		A:	in std_logic_vector(data_width-1 downto 0);
		B:	in std_logic_vector(data_width-1 downto 0);
		Cin:	in std_logic;

		S:	out std_logic_vector(data_width-1 downto 0);
		Cout:	out std_logic
	);
	end component;

begin

	Cont1 : contador 
		generic map(
			data_width 	=> WIDTH,
			reset_bit	=> '0'
			)
		port map(
			clk 	=> clk,
			rst	=> Cont1_reset,
			en	=> input_signal,
			dir	=> '1',
			count	=> input_period
			);

	Cont2 : contador 
		generic map(
			data_width 	=> WIDTH,
			reset_bit	=> '0'
			)
		port map(
			clk 	=> clk,
			rst	=> Cont2_reset,
			en	=> ref_signal,
			dir	=> '1',
			count	=> ref_period
			);
			


	Cont1_reset <= reset or not(input_signal);
	Cont2_reset <= reset or not(ref_signal);
end Behavioral;
