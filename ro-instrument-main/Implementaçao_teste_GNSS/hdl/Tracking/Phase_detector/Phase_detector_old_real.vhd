library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Phase_Detector is
	generic(
		WIDTH : integer := 16
		)
	Port ( 
		clk             : in  std_logic;
		ref_signal      : in  std_logic;
		input_signal 	: in  std_logic;
		phase_error     : out std_logic_vector(WIDTH-1 downto 0)
	);
end Phase_Detector;

architecture Behavioral of Phase_Detector is
begin
    process(clk, ref_signal, input_signal)
    begin
        if clk'event and clk = '1' then
            -- Calculate phase error
            if ref_signal = '1' and input_signal = '0' then
                phase_error <= phase_error + 1;
            elsif ref_signal = '0' and input_signal = '1' then
                phase_error <= phase_error - 1;
            end if;
        end if;
    end process;
end Behavioral;
