library IEEE;
use IEEE.STD_LOGIC_1164.ALL;   
use ieee.std_logic_arith.all;

entity PLL_Discriminator is
    generic (
        acc_width : integer := 32;
        DISC_TYPE : integer := 0   -- 0 = Costas, 1 = atan (future)
    );
    port (
        IP : in std_logic_vector(acc_width-1 downto 0);
        QP : in std_logic_vector(acc_width-1 downto 0);

        PLL_err : out std_logic_vector(acc_width-1 downto 0)
    );
end entity;

architecture structural of PLL_Discriminator is

    component Negative_Integer is
        generic ( data_width : integer := 32 );
        port (
            SIG_IN  : in  std_logic_vector(data_width-1 downto 0);
            SIG_OUT : out std_logic_vector(data_width-1 downto 0)
        );
    end component;

    signal Q_neg : std_logic_vector(acc_width-1 downto 0);

begin

    ------------------------------------------------------------------
    -- Costas discriminator (default)
    ------------------------------------------------------------------
    gen_costas : if DISC_TYPE = 0 generate

        NEG_Q : Negative_Integer
            generic map (data_width => acc_width)
            port map (
                SIG_IN  => QP,
                SIG_OUT => Q_neg
            );

        PLL_err <= QP when IP(acc_width-1) = '0' else Q_neg;

    end generate;

    ------------------------------------------------------------------
    -- Placeholder for atan-based discriminator
    ------------------------------------------------------------------
    gen_atan : if DISC_TYPE = 1 generate
        -- Not recommended for ASIC / space
        PLL_err <= (others => '0');
    end generate;

end architecture;


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;   
--use ieee.std_logic_arith.all;
--use ieee.math_real.all;
--
--entity Phase_Discriminator is
	--generic(
		--Discriminator_Type : natural := 1 
	--);
	--Port (
		--I_signal 	: in  real;
		--Q_signal	: in  real;
		--discriminator   : out real
	--);
--end Code_Discriminator;
--
--architecture Behavioral of Code_Discriminator is
	--
--begin
	--Discriminator_1: if Discriminator_Type = 1 generate
		--discriminator <= sign(I_signal)*Q_signal;
	--end generate Discriminator_1;
--
	--Discriminator_2: if Discriminator_Type = 2 generate
		--discriminator <= I_signal*Q_signal;
	--end generate Discriminator_2;
--
	--Discriminator_3: if Discriminator_Type = 3 generate
		--discriminator <= atan2(Q_signal,I_signal);
	--end generate Discriminator_3;
--end Behavioral;
