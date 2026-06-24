function [I,Q, fclk] = MAX2771_simplified(signal, fs, k, adc)
    %MAX2771 Summary of this function goes here
    %   Detailed explanation goes here    
    I_IF = real(signal);
    Q_IF = imag(signal);

    %%      Downsample
    fclk = fs/(k);
    I = downsampler(I_IF,k);
    Q = downsampler(Q_IF,k);

    %% ADC
    if adc == true
        I = sign(I).*(1 + (abs(I) > 0.5));
        Q = sign(Q).*(1 + (abs(Q) > 0.5));
    end
end