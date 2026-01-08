--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: GNSS_Serial_Correlator.vhd
-- File history:
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--
-- Description: 
--
-- <Description here>
--
-- Targeted device: <Family::PolarFireSoC> <Die::MPFS025T> <Package::FCSG325>
-- Author: <Name>
--
--------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity GNSS_Serial_Correlator is
    generic (
        input_width  : integer := 10;
        output_width : integer := 32
    );
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        en     : in  std_logic;
        dump   : in  std_logic;

        PRN    : in  std_logic;

        I_Real : in  std_logic_vector(input_width-1 downto 0);
        Q_Real : in  std_logic_vector(input_width-1 downto 0);

        I_acc  : out std_logic_vector(output_width-1 downto 0);
        Q_acc  : out std_logic_vector(output_width-1 downto 0)
    );
end entity GNSS_Serial_Correlator;
architecture architecture_GNSS_Serial_Correlator of GNSS_Serial_Correlator is

    --------------------------------------------------------------------
    -- Internal signals
    --------------------------------------------------------------------
    signal I_neg, Q_neg : std_logic_vector(input_width-1 downto 0);
    signal I_sel, Q_sel : std_logic_vector(input_width-1 downto 0);

    signal I_mac_out    : std_logic_vector(output_width-1 downto 0);
    signal Q_mac_out    : std_logic_vector(output_width-1 downto 0);

    --------------------------------------------------------------------
    -- Components
    --------------------------------------------------------------------
    component Negative_Integer is
        generic (
            data_width : integer := 10
        );
        port (
            SIG_IN  : in  std_logic_vector(data_width-1 downto 0);
            SIG_OUT : out std_logic_vector(data_width-1 downto 0)
        );
    end component;

    component Multiply_Accumulate is
        generic (
            input_width  : integer := 64;
            output_width : integer := 64
        );
        port (
            clk     : in  std_logic;
            rst     : in  std_logic;
            en      : in  std_logic;
            dump    : in  std_logic;

            data_in : in  std_logic_vector(input_width-1 downto 0);
            result  : out std_logic_vector(output_width-1 downto 0)
        );
    end component;

begin

    --------------------------------------------------------------------
    -- Negation blocks (PRN = 1 ? subtract)
    --------------------------------------------------------------------
    NEG_I : Negative_Integer
        generic map (
            data_width => input_width
        )
        port map (
            SIG_IN  => I_Real,
            SIG_OUT => I_neg
        );

    NEG_Q : Negative_Integer
        generic map (
            data_width => input_width
        )
        port map (
            SIG_IN  => Q_Real,
            SIG_OUT => Q_neg
        );

    --------------------------------------------------------------------
    -- PRN-controlled selection
    --------------------------------------------------------------------
    I_sel <= I_Real when PRN = '0' else I_neg;
    Q_sel <= Q_Real when PRN = '0' else Q_neg;

    --------------------------------------------------------------------
    -- I-channel correlator (MAC)
    --------------------------------------------------------------------
    MAC_I : Multiply_Accumulate
        generic map (
            input_width  => input_width,
            output_width => output_width
        )
        port map (
            clk     => clk,
            rst     => rst,
            en      => en,
            dump    => dump,
            data_in => I_sel,
            result  => I_mac_out
        );

    --------------------------------------------------------------------
    -- Q-channel correlator (MAC)
    --------------------------------------------------------------------
    MAC_Q : Multiply_Accumulate
        generic map (
            input_width  => input_width,
            output_width => output_width
        )
        port map (
            clk     => clk,
            rst     => rst,
            en      => en,
            dump    => dump,
            data_in => Q_sel,
            result  => Q_mac_out
        );

    --------------------------------------------------------------------
    -- Outputs (valid on dump cycle)
    --------------------------------------------------------------------
    I_acc <= I_mac_out;
    Q_acc <= Q_mac_out;
end architecture_GNSS_Serial_Correlator;
