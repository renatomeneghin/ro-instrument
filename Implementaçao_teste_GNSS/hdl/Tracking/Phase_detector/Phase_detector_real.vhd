library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.float_pkg.all;

entity Phase_Detector is
	Port ( 
		input_signal 	: in  real;
		fb_signal      	: in  real;
		phase_error     : out real
	);
end Phase_Detector;

architecture Behavioral of Phase_Detector is
begin
	phase_error <= input_signal - fb_signal;
end Behavioral;
