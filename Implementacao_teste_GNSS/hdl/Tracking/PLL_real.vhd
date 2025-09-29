library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use ieee.float_pkg.all;

entity pll is
	Port ( 
		clk             : in  std_logic;
		reset           : in  std_logic;
		ref_signal     	: in  real;
		dco_out       	: out real;
		lock		: out std_logic
	);
end pll;

architecture Behavioral of pll is
    	signal phase_error_value 	: real;
    	signal control_signal 		: real;
	signal fb_signal		: real;

begin

	Phase_Detector_inst : entity work.Phase_Detector 
	Port map(
		input_signal    => ref_signal,
		fb_signal 	=> fb_signal,
		phase_error     => phase_error_value
		);	


 	Loop_Filter_inst: entity work.Loop_filter
	generic map (
		Kp => 0.3, 
		Ki => 0.0002, 
		Kd => 0.0001	
		)
	Port map( 
		clk 		=> clk,
		reset 		=> reset,
		input_error  	=> phase_error_value,
		filter_out    => control_signal
	);


	DCO_inst : entity work.DCO
	Port map( 
		clk             => clk,
		reset           => reset,
		control_input   => control_signal,
		dco_out   	=> fb_signal
	);

	lock <= '1' when phase_error_value < 0.1 and phase_error_value > -0.1 else 
		'0';
	dco_out <= fb_signal;
end Behavioral;
