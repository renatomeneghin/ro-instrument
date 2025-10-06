library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DCO is
	generic(
		control_width : integer := 16
	);
    Port ( 
        clk             : in  	std_logic;
        reset           : in  	std_logic;
        control_input   : in 	std_logic_vector(control_width-1 downto 0);
        dco_out   	: out 	std_logic
        );
end DCO;

architecture Behavioral of DCO is

	signal contagem : std_logic_vector(control_width-1 downto 0);
	signal controle : std_logic_vector(control_width-1 downto 0);
	signal output	: std_logic;
	
component contador
		generic(
			data_width : integer := control_width;
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
			data_width : integer := control_width
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

	U1: contador 
		generic map 	(data_width => control_width, reset_bit => '0')
		port map	(clk => clk, rst => reset, en => '1', dir => '1', count => contagem);

	U2: adder 
		generic map	(data_width => control_width)
		port map 	(A => contagem, B => controle, Cin => '1', S => open, Cout=> output);

	dco_out <= '0' when reset = '1' else
		   output;

	controle <= not(control_input);

end Behavioral;
