library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.float_pkg.all;
use ieee.math_real.all;

entity NCO is
	generic(
		Inic_phase	: real := 0.0
	);
	Port ( 
		clk		: in  	std_logic;
		reset		: in  	std_logic;
		phase_diff   	: in 	real;
		nco_out   	: out 	real
	);
end NCO;

architecture Behavioral of NCO is
signal		phase 	: real;
begin

	process(clk, reset, phase_diff)
	begin
		if clk'event and clk = '1' then
			if reset = '1' then
				phase <= Inic_phase;
			else
				phase <= phase + phase_diff;				
			end if;
			dco_out <= sin(phase + phase_diff);
		end if;
	end process;

end Behavioral;
