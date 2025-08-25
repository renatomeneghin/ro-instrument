library IEEE;
use IEEE.STD_LOGIC_1164.ALL;   
use ieee.std_logic_arith.all;

entity PRN_Early_Prompt_Late is
    Port ( 
        clk        	: in  std_logic;
        reset      	: in  std_logic;
        enable		: in  std_logic;
        early_code 	: out std_logic;
        prompt_code	: out std_logic;
        late_code  	: out std_logic;
	valid_out	: out std_logic;
	SAT		: in integer range 0 to 31 
        );
end PRN_Early_Prompt_Late;

architecture Behavioral of PRN_Early_Prompt_Late is
	signal early_data,  prompt_data, prn_clk : std_logic;  

	component Flip_Flop_D
		port(	
			D:	in std_logic;
			rst:	in std_logic;
			clk:	in std_logic;
			Q:	out std_logic
		);
	end component;
	
begin

	ca_gen_inst: entity work.L1_CA_generator        
	port map (
	    clk => prn_clk,
	    rst	=> reset,	
	    PRN => early_data,			
	    ENABLE => enable,
	    valid_out => valid_out,
	    epoch => open,
	    epoch_advce => open,
	    SAT => SAT
	);

	prompt_reg: Flip_Flop_D port map (D => early_data, rst => reset, clk => clk, Q => prompt_data);
	late_reg:   Flip_Flop_D port map (D => prompt_data, rst => reset, clk => prn_clk, Q => late_code);

	prn_clk <= not clk;
	early_code <= early_data;
	prompt_code <= prompt_data;

end Behavioral;
