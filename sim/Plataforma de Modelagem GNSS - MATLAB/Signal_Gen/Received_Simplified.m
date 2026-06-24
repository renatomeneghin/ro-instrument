function Rsignal = Received_Simplified(rawdata,fca,fs,fdoppler,sv_id,n,phase)

c_d = 20;
codeLength = round(1023/n); 

%% Gold code generator

gc = gold_code_L1(codeLength,sv_id);

%% Data modulation

d1  = upsampler(rawdata,length(gc)*c_d);                % Upsample data message
gc1 = expand(gc,length(rawdata)*c_d);                   % Extend gold code to the amount of data bits
data = circshift(data_mapper(xor(d1,gc1)),phase);       % Upsample to the frequency

msignal = upsampler(data,fs/fca);                      % Upsample data to the sampling frequency
t = (0:length(msignal)-1)/fs;                 % carrier timer

%% Doppler shift
Rsignal = msignal .* exp(1i*2*pi*fdoppler.*t);

end