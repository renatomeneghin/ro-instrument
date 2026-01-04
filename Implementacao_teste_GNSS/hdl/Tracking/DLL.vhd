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

	component PLL_Discriminator is
    generic (
        acc_width : integer := 32;
        DISC_TYPE : integer := 0   -- 0 = Costas, 1 = atan (future)
    );
    port (
        IP : in std_logic_vector(acc_width-1 downto 0);
        QP : in std_logic_vector(acc_width-1 downto 0);

        PLL_err : out std_logic_vector(acc_width-1 downto 0)
    );
	end component;

	component Loop_filter is
    generic (
        WIDTH     : integer := 16;
        KP_SHIFT  : integer := 2;
        USE_P   : boolean := true;
        KI_SHIFT  : integer := 6;
        USE_I   : boolean := true;
        KD_SHIFT  : integer := 0;
        USE_D   : boolean := true
    );
	Port ( 
		clk             : in  std_logic;
		reset           : in  std_logic;
        update          : in  std_logic;
		input_error     : in  std_logic_vector(WIDTH-1 downto 0);
		filtered_out    : out std_logic_vector(WIDTH-1 downto 0)
	);
	end component;
	
begin


end Behavioral;
