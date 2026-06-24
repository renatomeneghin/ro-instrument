function BOC_signal = BOC(BPSK_signal)
    %BOC Summary of this function goes here
    %   Detailed explanation goes here
    BOC_signal = expand([1 -1],length(BPSK_signal)) .* upsampler(BPSK_signal,2); 
end