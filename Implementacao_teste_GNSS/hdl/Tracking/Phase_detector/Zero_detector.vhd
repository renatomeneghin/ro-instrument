--------------------------------------------------------------
-- Zero Detector		
--------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.all;

--------------------------------------------------------------

entity Zero_detector is
generic(
	data_width : integer := 6
);
port(	I:	in std_logic_vector(data_width-1 downto 0);
	O:	out std_logic
);
end Zero_detector;

--------------------------------------------------------------
architecture arq_Zero_detector of Zero_detector is
	constant zeros : std_logic_vector(data_width-1 downto 0) := (others => '0');
begin
process(I) is
begin
	if I = zeros then
		O <= '1';
	else
		O <= '0';
	end if;
end process;
end arq_Zero_detector;

--------------------------------------------------------------
