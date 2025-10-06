--------------------------------------------------------------
-- Contador sincrono com reset		
--------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.all;

--------------------------------------------------------------

entity contador is
generic(
	data_width : integer := 16;
	reset_bit  : std_logic := '0'
);
port(	
	clk: 	in std_logic;
	rst:	in std_logic;
	en:	in std_logic;
	dir:	in std_logic;
	count:	out std_logic_vector(data_width-1 downto 0)
);
end contador;

--------------------------------------------------------------

architecture arq_contador of contador is

signal EA, PE: std_logic_vector(data_width-1 downto 0);

begin
 	process(clk, rst, PE) is
	begin
		if rst = '1' then
			EA <= (others => reset_bit);
		elsif clk'event and clk= '1' then
			if en = '1' then
				EA <= PE;
			end if;
		end if;
	end process;
	PE <= 	unsigned(EA) + 1 when dir = '1' else
		unsigned(EA) - 1 when;
	count <= EA;
end arq_contador;

--------------------------------------------------------------
