library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;

entity Frequency_Discriminator is
	generic(
		WIDTH : integer := 16
		)
	Port ( 
		clk             : in  std_logic;
		reset      	: in  std_logic;
		input_signal 	: in  std_logic;
		freq_error      : out std_logic_vector(WIDTH-1 downto 0)
	);
end Frequency_Discriminator;

architecture Behavioral of Frequency_Discriminator is
	signal previous_input, sig_dir	: std_logic;

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

	component Flip_Flop_D 
		port(	
			D:	in std_logic;
			rst:	in std_logic;
			clk:	in std_logic;
			Q:	out std_logic
		);
	end component;

begin

	Accumulator: contador	generic map(data_width 	=> WIDTH, reset_bit	=> '0')
				port map(clk => clk, rst => reset, en => '1', dir => sig_dir, count => freq_error);

	previous_input_FF: Flip_Flop_D port map(D => input_signal, rst => reset, clk => clk, Q => previous_input);

	sig_dir <= input_signal xor previous_input;

end Behavioral;
