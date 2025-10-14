--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: Acquisition_control.vhd
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
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity Acquisition_control is
port (
	clk : in std_logic;
    rst : in std_logic;
    FFT_IQ_done : in std_logic;
    FFT_CA_done : in std_logic;
    Mult_done :in std_logic;
    IFFT_done : in std_logic;
    Corr_value : in std_logic;
    Corr_valid : in std_logic;
    SV_state : out std_logic;
    FFT_IQ_start : out std_logic;
    CA_start : out std_logic;
    FFT_CA_start : out std_logic;
    Mult_start : out std_logic;
    IFFT_start : out std_logic;
    next_Doppler : out std_logic;
    next_PRN : out std_logic
);
end Acquisition_control;

architecture architecture_Acquisition_control of Acquisition_control is
    type sv_states is (reset,init,load_ca,fft_iq,fft_ca,complex_mult,ifft,correlation,threshold_valid,next_search,acquired);

    signal state, next_state : sv_states;
    constant threshold : integer := 5000;
    
begin
    process(clk,rst)
    begin
        if rst = '1' then
            state <= reset;
        elsif rising_edge(clk) then 
            state <= next_state;
        end if;
    end process;
    
    process(state,FFT_IQ_done,FFT_CA_done,IFFT_done,Corr_valid,Corr_value)
    begin
        FFT_IQ_start <= '0';
        FFT_IQ_CA <= '0';
        Mult_start <= '0';
        IFFT_start <= '0';
        next_Doppler <= '0';
        next_PRN <= '0';
        SV_state <= '0';
        next_state <= state;
        
        case state is
            when reset =>
                next_state <= init;
            
            when init =>
                CA_start <= '1';
                next_state <= load_ca;
                
            when load_ca =>
                next_state <= fft_iq;
                
            when fft_iq =>
                FFT_IQ_start <= '1';
                if FFT_IQ_done = '1' then
                    next_state <= fft_ca;
                end if;
                
            when fft_ca =>
                FFT_CA_start <= '1';
                if FFT_CA_done = '1' then
                    next_state <= complex_mult;
                end if;
            
            when complex_mult =>
                Mult_start <= '1';
                if Mult_done = '1' then
                    next_state <= ifft;
                endif;
                
            when ifft =>
                IFFT_start = '1';
                if IFFT_done = '1' then
                    next_state <= correlation;
                end if;
                
            when correlation =>
                if Corr_valid = '1' then
                    next_state <= threshold_valid;
                end if;
            
            when threshold_valid =>
                if Corr_value >= threshold then
                    SV_state <= '1';
                    next_state <= acquired;
                else
                    next_state <= next_search;
                end if;
                
            when next_search =>
                next_Doppler = '1';
                next_PRN = '1';
                next_state <= init;
                
            when acquired =>
                SV_state <= '1';
                next_state <= acquired; -- Verificar
                
            -- Falta a parte de armazenamento
            
        end case;
    end process;
end architecture_Acquisition_control;
