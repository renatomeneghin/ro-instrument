library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.float_pkg.all;

entity Loop_filter is
	generic(
		Kp 	: real := 0.1;
		Ki	: real := 0.0;
		Kd	: real := 0.0;
		);
	Port ( 
		clk             : in  std_logic;
		reset           : in  std_logic;
		input_error     : in  real;
		filter_out    	: out real
	);
end Loop_filter;

architecture Behavioral of Loop_filter is
    	signal I_out, D_out, previous_error : real;
begin
	process(clk, reset, input_error)
	begin
		if reset = '1' then
			filter_out 	<= 0.0;
			I_out 		<= 0.0;
			D_out 		<= 0.0;
			previous_error	<= 0.0;
		elsif clk'event and clk = '1' then
			I_out <= I_out + input_error;
			D_out <= input_error - previous_error;
			filter_out <= Kp*(input_error + Ki*I_out + Kd*D_out);
			previous_error <= input_error;
		end if;
	end process;
end Behavioral;
