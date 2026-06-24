function Rsignal = Received(rawdata,fd,fca,fc,fs,fdoppler,sv_id,n,phase)

c_d = 20;
codeLength = round(1023/n); 

%% Gold code generator

gc = gold_code_L1(codeLength,sv_id);

%% Data modulation

d1  = upsampler(rawdata,length(gc)*c_d);                % Upsample data message
gc1 = expand(gc,length(rawdata)*c_d);                   % Extend gold code to the amount of data bits
data = circshift(data_mapper(xor(d1,gc1)),phase);                      % Upsample to the frequency

mdata = upsampler(data,fs/fca);                      % Upsample data to the sampling frequency

t = 0:1/fs:length(rawdata)/fd-1/fs;                 % carrier timer
Carrier = exp(1i*2*pi*fc.*t);                   % Carrier signal
msignal = mdata.*Carrier;                           % Modulated Signal

%% Doppler shift
Rsignal = real(msignal .* exp(1i*2*pi*fdoppler.*t));

end