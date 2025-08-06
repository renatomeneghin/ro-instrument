library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.float_pkg.all;

entity DCO is
    Port ( 
        clk             : in  	std_logic;
        reset           : in  	std_logic;
        control_input   : in 	real;
        dco_out   	: out 	real
        );
end DCO;

architecture Behavioral of DCO is
signal		freq 	: real;

begin

	process(clk, reset, control_input)
	begin
		if clk'event and clk = '1' then
			if reset = '1' then
				freq <= 0.0;
			else
				freq <= freq + control_input;				
			end if;
			if freq > 5.0 then
				freq <= 5.0;
			elsif freq < -5.0 then
				freq <= -5.0;
			end if;
			dco_out <= freq + control_input;
		end if;
	end process;

end Behavioral;
