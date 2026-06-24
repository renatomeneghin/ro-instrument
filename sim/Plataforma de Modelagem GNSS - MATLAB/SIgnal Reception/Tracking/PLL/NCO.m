function out = nco(fs,fi,phase)    %Numeric controlled oscilator
    out = exp(1i*2*pi*fi/fs+1i*phase);
end