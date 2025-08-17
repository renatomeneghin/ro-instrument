library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity lfsr is
    generic (
        WIDTH : integer := 10;
        TAPS  : std_logic_vector(WIDTH-1 downto 0) := (others => '0')
    );
    port (
        clk    : in  std_logic;
        reset  : in  std_logic;
        enable : in  std_logic;
        q      : out std_logic_vector(WIDTH-1 downto 0);
        out_bit: out std_logic
    );
end lfsr;

architecture Behavioral of lfsr is
    signal reg : std_logic_vector(WIDTH-1 downto 0) := (others => '1');
    
    -- Function to perform XOR across all bits in a vector
    function reduce_xor (input : std_logic_vector) return std_logic is
        variable result : std_logic := '0';
    begin
        for i in input'range loop
            result := result xor input(i);
        end loop;
        return result;
    end function;

begin
    process(clk, reset, enable)
        variable result : std_logic := '0';
    begin
        if clk'event and clk = '1' then
            if reset = '1' then
                reg <= (others => '1');
            elsif enable = '1' then
                reg <= reg(WIDTH-2 downto 0) & reduce_xor(reg and TAPS);
            end if;
        end if;
    end process;

    q <= reg;
    out_bit <= reg(WIDTH-1);
end Behavioral;
