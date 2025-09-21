library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Counter_DDS_CA is
port (
   clk      : in std_logic;
   reset    : in std_logic;
   step     : in unsigned(15 downto 0);
   freq_DDS : out unsigned(15 downto 7);
   freq_CA  : out unsigned(7 downto 0)
);
end Counter_DDS_CA;

architecture architecture_Counter_DDS_CA of Counter_DDS_CA is
    signal acc : unsigned(15 downto 0);
    
begin
    process(clk, reset) is
    begin
        if reset = '1' then
            acc <= (others => '0');
        elsif clk'event and clk = '1' then 
            acc <= acc + step;
        end if;
    end process;
    freq_DDS <= acc(15 downto 7));
    freq_CA  <= acc(7 downto 0);
    
end architecture_Counter_DDS_CA;
