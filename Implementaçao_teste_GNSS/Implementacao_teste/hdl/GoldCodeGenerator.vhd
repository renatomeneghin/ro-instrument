library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all

entity GoldCodeGenerator is
    PORT(
        clk: in std_logic;
        reset : in std_logic;
        sv_id : in integer range 1 to 32; -- sattelite ID
        gold_code_L1 : out std_logic; -- gold code output
    );
end GoldCodeGenerator;

architecture Behavioral of GoldCodeGenerator is
    --LUT -> map each sattelite (1-32) for 2 specific G2 register taps 
    type tap_table is array (1 to 32) of INTEGER;
    --store taps positions for each SV
     constant G2_TAP1 : tap_table := (
        2, 3, 4, 5, 1, 2, 3, 4, 5, 6,  -- PRN 1-10
        1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -- PRN 11-20
        1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -- PRN 21-30
        1, 2                            -- PRN 31-32
    );
    constant G2_TAP2 : tap_table := (
        6, 7, 8, 9, 9, 10, 8, 9, 10, 1,  -- PRN 1-10
        2, 3, 4, 5, 6, 7, 8, 9, 10, 1,   -- PRN 11-20
        2, 3, 4, 5, 6, 7, 8, 9, 10, 1,   -- PRN 21-30
        2, 3                              -- PRN 31-32
    );
    
    --shift registers
    signal shift_G1 : STD_LOGIC_VECTOR(1 to 10) := (others => '1');
    signal shift_G2 : STD_LOGIC_VECTOR(1 to 10) := (others => '1');
    
    --sinais de feedback
    signal feedback_G1, feedback_G2 : STD_LOGIC;
    signal G2_output : STD_LOGIC;
begin
    --generates 2 new bits for the registers
    feedback_G1 <= shift_G1(3) xor shift_G1(10);  -- Feedback for G1
    feedback_G2 <= shift_G2(2) xor shift_G2(3) xor shift_G2(6) xor 
                   shift_G2(8) xor shift_G2(9) xor shift_G2(10); -- Feedback for G2
process(clk, reset)
    begin
    --update the registers for each clock cycle
        if reset = '1' then
            shift_G1 <= (others => '1');
            shift_G2 <= (others => '1');
        elsif rising_edge(clk) then
            --updates G1
            shift_G1 <= feedback_G1 & shift_G1(1 to 9);
            
            --updates G2
            shift_G2 <= feedback_G2 & shift_G2(1 to 9);
        end if;
    end process;

    --G2 taps selection for each SV
    G2_output <= shift_G2(G2_TAP1(sv_id)) xor shift_G2(G2_TAP2(sv_id));
    
    --final Gold Code generation
    gold_code <= shift_G1(10) xor G2_output;

end Behavioral;