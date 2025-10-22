--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: Tracking_test.vhd
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

entity Tracking_test is
port (
    --<port_name> : <direction> <type>;
	port_name1 : IN  std_logic; -- example
    port_name2 : OUT std_logic_vector(1 downto 0)  -- example
    --<other_ports>;
);
end Tracking_test;
architecture architecture_Tracking_test of Tracking_test is
   -- signal, component etc. declarations
	signal signal_name1 : std_logic; -- example
	signal signal_name2 : std_logic_vector(1 downto 0) ; -- example

begin
    component costas_loop_C0 is
    port(
        --Inputs
        ARSTN_I        : in std_logic;
        IDATA_I        : in std_logic_vector(15 downto 0);
        KI_I           : in std_logic_vector(17 downto 0);
        KP_I           : in std_logic_vector(17 downto 0);
        LIMIT_I        : in std_logic_vector(17 downto 0);
        QDATA_I        : in std_logic_vector(15 downto 0);
        SYS_CLK_I      : in std_logic;
        THETA_FACTOR_I : in std_logic_vector (17 downto 0);
        --Outputs
        IDATA_O : out std_logic_vector(15 downto 0);
        PI_O    : out std_logic_vector(17 downto 0);
        QDATA_O : out std_logic_vector(15 downto 0);
        THETA_O : out std_logic_vector(9 downto 0);
    );
    end component;
    
end architecture_Tracking_test;
