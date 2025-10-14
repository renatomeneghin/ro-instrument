--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: Acquisition_top.vhd
-- File history:
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--
-- Description: 
--
-- <Description here>
--
-- Targeted device: <Family::PolarFireSoC> <Die::MPFS025T> <Package::FCVG484>
-- Author: <Name>
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;

entity Acquisition_top is
port (
    --<port_name> : <direction> <type>;
	port_name1 : IN  std_logic; -- example
    port_name2 : OUT std_logic_vector(1 downto 0)  -- example
    --<other_ports>;
);
end Acquisition_top;
architecture architecture_Acquisition_top of Acquisition_top is
   -- signal, component etc. declarations
	signal signal_name1 : std_logic; -- example
	signal signal_name2 : std_logic_vector(1 downto 0) ; -- example
    
    component Acquisition is
    port(
        CLK             : IN  std_logic; -- example
        CA_CLK          : IN std_logic;
        RST             : IN    std_logic;
        MAX_INPUT_I     : IN  std_logic_vector(1 downto 0); -- MAX INPUT IN PHASE SIGNAL
        MAX_INPUT_Q     : IN  std_logic_vector(1 downto 0); -- MAX INPUT QUADRATURE SIGNAL
        MAX_INPUT_CLK   : IN  std_logic; -- MAX INPUT CLOCK
        READ_OUT        : IN  std_logic; -- READ  OUTPUT
        READ_OUT_V      : OUT  std_logic; -- VALID OUTPUT
        OUT_I           : OUT  std_logic_vector(20 downto 0); -- OUTPUT REAL PART
        OUT_Q           : OUT  std_logic_vector(20 downto 0) -- OUTPUT IMAG PART
    );
    end component;
    component Acquisition_control is
    port(
        clk : in std_logic;
        rst : in std_logic;
        FFT_IQ_done : in std_logic;
        FFT_CA_done : in std_logic;
        Mult_done :in std_logic;
        IFFT_done : in std_logic;
        Corr_value : in std_logic;
        Corr_valid : in std_logic;
        SV_state : out std_logic;
        FFT_IQ_start : out std_logic;
        CA_start : out std_logic;
        FFT_CA_start : out std_logic;
        Mult_start : out std_logic;
        IFFT_start : out std_logic;
        next_Doppler : out std_logic;
        next_PRN : out std_logic
    );
    end component;

begin

   -- architecture body
end architecture_Acquisition_top;
