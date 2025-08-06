library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Phase_Detector is
	generic(
		WIDTH : integer := 16
		);
	Port ( 
		clk             : in  std_logic;
		rst		: in  std_logic;
		ref_signal      : in  std_logic;
		input_signal 	: in  std_logic;
		phase_error     : out std_logic_vector(WIDTH-1 downto 0)
	);
end Phase_Detector;

architecture Behavioral of Phase_Detector is
	signal sig_en, sig_dir	: std_logic;

	component contador 
	generic(
		data_width : integer := WIDTH;
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

begin
	sig_en	<= ref_signal xor input_signal;
	sig_dir <= ref_signal and not input_signal;

	Phase_error_count: contador 	generic map(data_width => WIDTH, reset_bit => '0')
					port 	map(clk => clk, rst => rst, en => sig_en, dir => sig_dir, count => phase_error);


end Behavioral;
