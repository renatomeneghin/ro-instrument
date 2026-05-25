--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: Complex_multiplier.vhd
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

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Complex_multiplier is
generic(
    data_width : integer := 16
);
port (
    clk : in std_logic;
    -- P = A*B
    -- A = a_real + a_imag
    -- B = b_real + b_imag
    -- p = (a_real*b_real - a_imag*b_imag) + i(a_imag*b_real + a_real*b_imag) 
	a_real : in std_logic_vector(data_width-1 downto 0);
    a_imag : in std_logic_vector(data_width-1 downto 0); 
	b_real : in std_logic_vector(data_width-1 downto 0);
    b_imag : in std_logic_vector(data_width-1 downto 0);
	p_real : out std_logic_vector(2*data_width downto 0);
    p_imag : out std_logic_vector(2*data_width downto 0)
);
end Complex_multiplier;

architecture architecture_Complex_multiplier of Complex_multiplier is
    
    signal a, b, ai, bi: signed(data_width -1 downto 0)
	signal ab, aibi, aib, abi : signed(2*data_width-1 downto 0);
    --signal OverFlow, OverFlow_Sub, OverFlow_Soma : std_logic;
    --signal cout, couti : std_logic; --Sem uso

    --component UAL is
    --generic(
        --data_width : integer := 33
    --);
    --port(
        --A : in std_logic_vector(data_width-1 downto 0);
        --B : in std_logic_vector(data_width-1 downto 0);
        --Cin : in std_logic;

        --S :	out std_logic_vector(data_width-1 downto 0);
        --Cout : out std_logic
    --);
    --end component;
    
begin

    a <= signed(a_real);
    ai <= signed(a_imag);
    b <= signed(b_real);
    bi <= signed(b_imag);
    
    ab <= a*b;
    abi <= a*bi;
    aib <= ai*b;
    aibi <= ai*bi;
    
    p_real <= (ab(2*data_width-1) & ab) - (aibi(2*data_width-1) & aibi);
    p_imag <= (aib(2*data_width-1) & aib) + (abi(2*data_width-1) & abi);
    
    --port map da Subtracao a_real*b_real - a_imag*b_imag Com Extencao de sinal (evitar OV)
    --Sub: UAL port map (ab(2*data_width-1) & ab, aibi_invertido(2*data_width-1) & aibi_invertido, "1", p, cout);
    --port map da Soma a_imag*b_real + a_real*b_imag Com Extencao de sinal
    --Sum: UAL port map(aib(2*data_width-1) & aib, abi(2*data_width-1) & abi, "0", pi, couti);
    
    --deteccao de OverFlow
    --OverFlow_Sub <= ((ab(2*data_width-1) xnor aibi_invertido(2*data_width-1)) and (ab(2*data_width-1) xor p(2*data_width)));
    --OverFlow_Soma <= ((aib(2*data_width-1) xnor abi(2*data_width-1)) and (aib(2*data_width-1) xor pi(2*data_width)));
    --OverFlow <= OverFlow_Sub or OverFlow_Soma;
    -- atribuicao de Saidas p_real e p_imag
    
end architecture_Complex_multiplier;
