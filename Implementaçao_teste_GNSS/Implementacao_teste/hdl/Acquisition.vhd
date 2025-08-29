--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: Acquisition.vhd
-- File history:
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--
-- Description: 
--
-- <Description here>
--
-- Targeted device: <Family::PolarFire> <Die::MPF050T> <Package::FCSG325>
-- Author: <Name>
--
--------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity Acquisition is
generic (
    data_width : integer := 12
);
port (
    --<port_name> : <direction> <type>;
	CLK : IN  std_logic; -- example
	MAX_INPUT_I     : IN  std_logic_vector(1 downto 0); -- MAX INPUT IN PHASE SIGNAL
    MAX_INPUT_Q     : IN  std_logic_vector(1 downto 0); -- MAX INPUT QUADRATURE SIGNAL
    MAX_INPUT_CLK   : IN  std_logic -- MAX INPUT CLOCK
);
end Acquisition;

architecture architecture_Acquisition of Acquisition is
   -- signal, component etc. declarations
	signal Frequency_offset_data : std_logic_vector(9 downto 0); -- example
	signal cos_signal, sin_signal : std_logic_vector(data_width-1 downto 0) ; -- example
	signal I1_signal, Q1_signal, I2_signal, Q2_signal, Q2_signal_n: std_logic_vector(data_width downto 0); -- example
	signal FFT_I_signal, FFT_Q_signal, FFT_X_signal, FFT_Y_signal : std_logic_vector(24 downto 0); -- example
    -- Verificar
    signal FFT_CA_in_real, FFT_CA_out_real, FFT_CA_in_imag, FFT_CA_out_imag : std_logic_vector (32 downto 0); 
    signal IFFT_in_imag, IFFT_in_real : std_logic_vector (32 downto 0); 
    signal CA_CONJ_out_imag : std_logic_vector (23 downto 0); 
    signal mult_out_real, mult_out_imag : std_logic_vector(32 downto 0);
    signal IFFT_in_real_temp, IFFT_in_imag_temp : std_logic_vector(31 downto 0);
    signal IFFT_out_real, IFFT_out_imag : std_logic_vector(31 downto 0);
    -- Verificar
    signal ca_prn, ca_clk, ca_rst : std_logic;
    signal ca_enable, ca_valid : std_logic;
    signal ca_epoch, counter_init : std_logic;
    signal ca_counter : std_logic_vector(5 downto 0);
    signal sat_int: integer range 0 to 31; -- 32 GPS
    signal count_state: std_logic_vector(9 downto 0); 
    signal ca_reset_counter : std_logic;
    signal mem_addr_reg : std_logic_vector(31 downto 0);
    signal ca_bit_buffer : std_logic_vector(31 downto 0);
    signal bit_index : integer range 0 to 31;  
    
    
    component COREDDS_C0 is
    -- Port list
    port(
        -- Inputs
        CLK            : in  std_logic;
        FREQ_OFFSET    : in  std_logic_vector(9 downto 0);
        FREQ_OFFSET_WE : in  std_logic;
        INIT           : in  std_logic;
        NGRST          : in  std_logic;
        RSTN           : in  std_logic;
        -- Outputs
        COSINE         : out std_logic_vector(11 downto 0);
        INIT_OVER      : out std_logic;
        SINE           : out std_logic_vector(11 downto 0)
        );
    end component;
    
    component COREFFT_C0 is -- In-Place FFT
    -- Port list
    port(
        -- Inputs
        CLK         : in  std_logic;
        DATAI_IM    : in  std_logic_vector(23 downto 0);
        DATAI_RE    : in  std_logic_vector(23 downto 0);
        DATAI_VALID : in  std_logic;
        NGRST       : in  std_logic;
        READ_OUTP   : in  std_logic;
        SLOWCLK     : in  std_logic;
        -- Outputs
        BUF_READY   : out std_logic;
        DATAO_IM    : out std_logic_vector(23 downto 0);
        DATAO_RE    : out std_logic_vector(23 downto 0);
        DATAO_VALID : out std_logic;
        OUTP_READY  : out std_logic
    );
    end component;
    
    component COREFFT_C1 is -- In-Place FFT
    -- Port list
    port(
        -- Inputs
        CLK         : in  std_logic;
        DATAI_IM    : in  std_logic_vector(23 downto 0);
        DATAI_RE    : in  std_logic_vector(23 downto 0);
        DATAI_VALID : in  std_logic;
        NGRST       : in  std_logic;
        READ_OUTP   : in  std_logic;
        SLOWCLK     : in  std_logic;
        -- Outputs
        BUF_READY   : out std_logic;
        DATAO_IM    : out std_logic_vector(23 downto 0);
        DATAO_RE    : out std_logic_vector(23 downto 0);
        DATAO_VALID : out std_logic;
        OUTP_READY  : out std_logic
    );
    end component;

    component complex_multiplier_C0 is
    -- Port list
    port(
        --Inputs
        aimag_i  : in  std_logic_vector(15 downto 0);
        areal_i  : in  std_logic_vector(15 downto 0);
        bimag_i  : in  std_logic_vector(15 downto 0);
        breal_i  : in  std_logic_vector(15 downto 0);
        clock_i  : in  std_logic;
        nreset_i : in  std_logic;
        
        --Outputs
        cimag_o  : out std_logic_vector(32 downto 0);
        creal_o  : out std_logic_vector(32 downto 0)
    );
    end component;
    
    component Multiplier_simplified is
    generic(
        data_width : integer := 12
    );
    port(
        -- 	Bit_Vector Inputs
        A :	in std_logic_vector(data_width-1 downto 0);
        B :	in std_logic_vector(1 downto 0);

        --	Bit_Vector Outputs
        S :	out std_logic_vector(data_width downto 0)
    );
    end component;
    
    component UAL is
    generic(
        data_width : integer := 64
    );
    port(	
        A:	in std_logic_vector(data_width-1 downto 0);
        B:	in std_logic_vector(data_width-1 downto 0);
        Cin:	in std_logic;

        S:	out std_logic_vector(data_width-1 downto 0);
        Cout:	out std_logic
    );
    end component;
    
    component contador is
    generic(
        data_width : integer := 6
    );
    port(	
        clk: 	in std_logic;
        init:	in std_logic;
        count:	out std_logic_vector(data_width-1 downto 0)
    );
    end component;
    
    component L1_CA_generator is
	Port (
			clk : in std_logic;
			rst	: in std_logic;		
			PRN : out std_logic;			
			ENABLE : in std_logic;
			valid_out : out std_logic;
			epoch : out std_logic;
			epoch_advce : out std_logic;
			SAT : in integer range 0 to 31 -- 32 GPS
		);
    end component;
    
begin

    -- architecture body
    -- DDS e contador 
    SINE_GENERATOR: COREDDS_C0 port map (CLK,Frequency_offset_data, '0','1','1','1',cos_signal,open,sin_signal);
    CONTADOR_ESTADO: contador generic map (10) port map(clk, counter_init, count_state);
    
    -- Entrada
    MULT1: Multiplier_simplified generic map(data_width) port map(cos_signal,MAX_INPUT_I,I1_signal);
    MULT2: Multiplier_simplified generic map(data_width) port map(sin_signal,MAX_INPUT_I,I2_signal);
    MULT3: Multiplier_simplified generic map(data_width) port map(sin_signal,MAX_INPUT_Q,Q2_signal);
    MULT4: Multiplier_simplified generic map(data_width) port map(cos_signal,MAX_INPUT_Q,Q1_signal);
	Q2_signal_n <= not(Q2_signal);
    SUM_I: UAL generic map(data_width) port map(I1_signal,Q2_signal_n,'1',FFT_I_signal(data_width downto 0),FFT_I_signal(23));
    SUM_Q: UAL generic map(data_width) port map(I2_signal,Q1_signal,'0',FFT_Q_signal(data_width downto 0),FFT_Q_signal(23));
    
    -- Código CA
	CA_CODE: L1_CA_generator 
	   port map(
	     clk        => CA_CLK,
	     rst        => CA_RST,
	     PRN        => CA_PRN,
	     ENABLE     => CA_ENABLE,
	     valid_out  => CA_valid,
	     epoch      => CA_epoch,
	     epoch_advce => open,
	     SAT        => SAT_int
	   );
    FFT_CA_in_real(0) <= '1';
    FFT_CA_in_real(data_width downto 1) <= (others => CA_PRN);
    
    --FFT
    FFT_IQ: COREFFT_C0 port map(CLK,FFT_Q_signal,FFT_I_signal,'1','1','1','1',open,FFT_X_signal,FFT_Y_signal,open,open);
    FFT_CA: COREFFT_C1 port map(CLK,FFT_CA_in_imag,FFT_CA_in_real,'1','1','1','1',open,FFT_CA_out_imag,FFT_CA_out_real,open,open); -- Verificar
    
    -- Correlação
    MULT5: complex_multiplier_C0 port map (FFT_X_signal, FFT_Y_signal, CA_CONJ_out_imag, FFT_CA_out_real, CLK, '1', IFFT_in_imag, IFFT_in_real); -- Verificar
    IFFT: COREFFT_C0 port map(CLK, IFFT_in_imag, IFFT_in_real,'1','1','1','1',open,IFFT_out_imag,IFFT_out_real,open,open); -- Verificar
    
    CA_CONJ_out_imag <= std_logic_vector(resize(-signed(FFT_CA_out_imag), 24));
    SAT_int <= to_integer(unsigned(count_state(9 downto 4)));
    Frequency_offset_data <= count_state(3 downto 0);

end architecture_Acquisition;
