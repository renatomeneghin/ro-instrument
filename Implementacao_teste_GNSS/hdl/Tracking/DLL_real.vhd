library IEEE;
use IEEE.STD_LOGIC_1164.ALL;   
use ieee.std_logic_arith.all;

entity dll is
    Port ( 
        clk        : in  std_logic;
        reset      : in  std_logic;
        I_signal   : in  real;
        Q_signal   : in  real;
        early_code : in  std_logic;
        prompt_code: in  std_logic;
        late_code  : in  std_logic;
        code_nco   : out std_logic
        );
end dll;

architecture Behavioral of dll is
	signal 	early_data,  prompt_data,  late_data,
		I_input, Q_input : real;  
	 	early_corr_I, early_corr_Q, 
		prompt_corr_I, prompt_corr_Q, 
		late_corr_I, late_corr_Q,
	 	discr_error, code_phase : real;
	signal nco_target : real;

	component corr 
	    Port (
		clk             : in  std_logic;
		reset           : in  std_logic;
		d1             	: in  real;
		d2       	: in  real; -- Single-bit input signal
		corr 		: out real; -- Example result width
		corr_valid  	: out std_logic
	    );
	end component;

	component Code_Discriminator 
	generic(
		Discriminator_Type : natural := 1 
	);
	Port ( 
		IE_corr 	: in  real;
		QE_corr		: in  real;
		IP_corr 	: in  real;
		QP_corr		: in  real;
		IL_corr 	: in  real;
		QL_corr		: in  real;
		discriminator   : out real
	);
	end component;

	component NCO 
	generic(
		Inic_phase	: real := 0.0
	);
	Port ( 
		clk		: in  	std_logic;
		reset		: in  	std_logic;
		phase_diff   	: in 	real;
		nco_out   	: out 	real
	);
	end component;

begin
	-- Reception and adjustment of the signals
	early_data 	<= 1.0 when early_code 	= '1' else -1.0;
	prompt_data 	<= 1.0 when prompt_code = '1' else -1.0;
	late_data 	<= 1.0 when late_code 	= '1' else -1.0;
	I_input		<= I_signal * code_nco_I;
	Q_input		<= Q_signal * code_nco_Q;

	-- Correlation calculations
	U_Corr_I_early: 	corr port map (clk => clk, reset => reset, 
				d1 => I_input, d2 => early_data, 
				corr => early_corr_I, corr_valid => open);
	U_Corr_Q_early: 	corr port map (clk => clk, reset => reset,
				d1 => Q_input, d2 => early_data, 
				corr => early_corr_Q, corr_valid => open);
	U_Corr_I_prompt: 	corr port map (clk => clk, reset => reset, 
				d1 => I_input, d2 => prompt_data, 
				corr => prompt_corr_I, corr_valid => open);
	U_Corr_Q_prompt: 	corr port map (clk => clk, reset => reset, 
				d1 => Q_input, d2 => prompt_data, 
				corr => prompt_corr_Q, corr_valid => open);
	U_Corr_I_late: 		corr port map (clk => clk, reset => reset, 
				d1 => I_input, d2 => late_data, 
				corr => late_corr_I, corr_valid => open);
	U_Corr_Q_late: 		corr port map (clk => clk, reset => reset, 
				d1 => Q_input, d2 => late_data, 
				corr => late_corr_Q, corr_valid => open);

	U_Discriminator:	Code_Discriminator generic map(Discriminator_Type => 2)
				port map (IE_corr => early_corr_I, QE_corr => early_corr_Q,
					IP_corr => prompt_corr_I, QP_corr => prompt_corr_Q,
					IL_corr => late_corr_I, QL_corr => late_corr_Q, 
					discriminator => discr_error);

 	U_Loop_Filter: entity work.Loop_filter generic map (Kp => 0.3, Ki => 0.0002, Kd => 0.0)
	Port map(clk => clk, reset => reset, input_error => discr_error, filter_out => code_phase);

	U_I_DCO: NCO 	generic map (Inic_phase => 1.570796327) 
			port map(clk => clk, reset => reset, phase_diff => code_phase, nco_out => code_nco_I);

	U_Q_DCO: NCO 	generic map (Inic_phase => 0.0) 
			port map(clk => clk, reset => reset, phase_diff => code_phase, nco_out => code_nco_Q);
	
end Behavioral;
