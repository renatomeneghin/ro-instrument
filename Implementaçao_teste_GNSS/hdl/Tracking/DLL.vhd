library IEEE;
use IEEE.STD_LOGIC_1164.ALL;   
use ieee.std_logic_arith.all;

entity dll is
	generic (
		WIDTH : integer := 16
		);
    Port ( 
        clk        : in  std_logic;
        reset      : in  std_logic;
        I_signal   : in  std_logic;
        early_code : in  std_logic;
        prompt_code: in  std_logic;
        late_code  : in  std_logic;
        code_nco   : out std_logic_vector(WIDTH-1 downto 0)
        );
end dll;

architecture Behavioral of dll is
	signal early_dir,  prompt_dir,  late_dir : std_logic;  
	signal early_corr, prompt_corr, late_corr : std_logic_vector(WIDTH-1 downto 0);
	signal late_corr_negative : std_logic_vector(WIDTH-1 downto 0);
	signal freq_err : std_logic_vector(WIDTH-1 downto 0);
	signal nco_error : std_logic_vector(WIDTH-1 downto 0); 
	signal code_nco_accum : std_logic_vector(WIDTH-1 downto 0); 
	signal code_nco_accum_in : std_logic_vector(WIDTH-1 downto 0);
	signal code_nco_internal : std_logic_vector(WIDTH-1 downto 0); 

	component contador 
	generic(
		data_width : integer := WIDTH;
		reset_bit  : std_logic := '0'
	);
	port(	
		clk: 	in std_logic;
		rst:	in std_logic;
		en:		in std_logic;
		dir:	in std_logic;
		count:	out std_logic_vector(data_width-1 downto 0)
	);
	end component;

	component adder 
	generic(
		data_width : integer := WIDTH
	);
	port(	
		A:	in std_logic_vector(data_width-1 downto 0);
		B:	in std_logic_vector(data_width-1 downto 0);
		Cin:	in std_logic;

		S:	out std_logic_vector(data_width-1 downto 0);
		Cout:	out std_logic
	);
	end component;

	component shift_reg
	generic(
		data_width : integer := WIDTH
	);
	port(
		-- 	Bit Inputs
		en:	in std_logic;
		clk:	in std_logic;
		rst:	in std_logic;
		serial:	in std_logic;
		shift:	in std_logic;

		-- 	Bit_Vector Inputs
		I:	in std_logic_vector(data_width-1 downto 0);

		--	Bit_Vector Outputs
		O:	out std_logic_vector(data_width-1 downto 0)
	);
	end component;
	
begin

	early_corr_data : contador 	generic map(data_width 	=> WIDTH, reset_bit => '0')
				port map(clk => clk, rst => reset, en => '1', dir => early_dir, count => early_corr);

	prompt_corr_data : contador	generic map(data_width => WIDTH, reset_bit => '0')
				port map(clk => clk, rst => reset, en => '1', dir => prompt_dir, count => prompt_corr);

	late_corr_data : contador	generic map(data_width => WIDTH, reset_bit => '0')
				port map(clk => clk, rst => reset, en => '1', dir => late_dir, count => late_corr);
	
	freq_err_summer: adder generic map(data_width => WIDTH)
			port map (A => early_corr, B => late_corr_negative, Cin => '1', S => freq_err, Cout => open);

	nco_internal_sum: adder generic map(data_width => WIDTH)
			port map (A => code_nco_internal, B => freq_err, Cin => '0', S => nco_error, Cout => open);

	freq_error: adder generic map(data_width => WIDTH)
			port map (A => code_nco_accum, B => nco_error, Cin => '0', S => code_nco_accum_in, Cout => open);

	NCO_internal : shift_reg	generic map(data_width 	=> WIDTH)
				port map(en => '1', clk => clk, rst => reset, serial => '0', 
						shift  => '0', I => code_nco_accum_in, O => code_nco_accum);
	
	late_corr_negative <= not late_corr;
	early_dir <= early_code xor not I_signal;
	prompt_dir <= prompt_code xor not I_signal;
	late_dir <= late_code xor not I_signal;

	code_nco_internal <= "00000000" & code_nco_accum(WIDTH-1 downto 8);

	code_nco <= code_nco_internal;
end Behavioral;
