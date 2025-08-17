library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ca_code_generator is
    Port (
        clk       : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        enable    : in  STD_LOGIC;
        prn_code  : out STD_LOGIC
    );
end ca_code_generator;

architecture Behavioral of ca_code_generator is
    signal G1, G2 : std_logic_vector(9 downto 0);
    signal g1_out, g2_out : std_logic;
    constant G2_DELAY : integer := 2; -- Example delay for a specific satellite
begin
    -- G1 LFSR instance
    g1_inst: entity work.lfsr
        generic map (WIDTH => 10, TAPS => "1000000100") -- Correct G1 taps
        port map (clk => clk, reset => reset, enable => enable, q => G1, out_bit => g1_out);

    -- G2 LFSR instance
    g2_inst: entity work.lfsr
        generic map (WIDTH => 10, TAPS => "1110101100") -- Correct G2 taps
        port map (clk => clk, reset => reset, enable => enable, q => G2, out_bit => g2_out);

    -- Combine G1 and delayed G2 to create the C/A code
    prn_code <= g1_out xor G2((G2_DELAY + 9) mod 10);
    -- Counter to keep track of the 1023 chip periods
    process(clk,  reset, enable)
    begin
        if clk'event and clk = '1' then
            if reset = '1' then
                counter <= 0;
            elsif enable = '1' then
                if counter = 1022 then
                    counter <= 0;
                else
                    counter <= counter + 1;
                end if;
            end if;
        end if;
    end process;

    end Behavioral;
