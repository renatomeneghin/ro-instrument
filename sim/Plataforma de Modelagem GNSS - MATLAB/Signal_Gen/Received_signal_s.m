%% Signal parameters


%rawdata = randi([0 1], [1 50e3]); 
%rawdata = [0];
rawdata = [1 0 1 1 0 1];
%rawdata = [1 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1];

% fd      = 50;               % Data frequency
% fca     = 1.023e6;          % C/A code frequency
% fc      = 1575.42e6;        % Carrier frequency
fd      = 5;               % Data frequency
fca     = 1.023e5;          % C/A code frequency
fc      = fca*50;        % Carrier frequency (Adjusted to not overload RAM)
sv_id   = 1;                % Satellite Vehicle ID
n       = 1;                % BPSK(1) fc = n*1.023e6; %code rate BPSK(n) spreading code rate n*1.023 MHz
codeLength = round(1023/n); 
c_d = 20;

%% Gold code generator

shift_G1_reg = [ones(1,10)];
shift_G2_reg = [ones(1,10)];
SV = sv_id;
gc = gold_code(codeLength,shift_G1_reg,shift_G2_reg,SV);

%% Data modulation

d1  = upsampler(rawdata,length(gc)*c_d);                % Upsample data message
gc1 = expand(gc,length(rawdata)*c_d);                   % Extend gold code to the amount of data bits
data = (data_mapper(xor(d1,gc1)));    % Upsample to the frequency

fs = fc*10;                                         % sample frequency
mdata = upsampler(data,fd*fs/fca);                      % Upsample data to the sampling frequency

t = 0:1/fs:length(rawdata)/fd-1/fs;                 % carrier timer
% t = 0:1/fs:1/fd-1/fs;                 % carrier timer
Carrier = exp(1i*2*pi*fc.*t);                   % Carrier signal
msignal = mdata.*Carrier;                           % Modulated Signal

%% Doppler shift

v = 23.0;
lambda = sqrt(1/(8.85e-12*4*pi*1e-7))/fc;
fdoppler = 1e2;

Rsignal = real(msignal .* exp(j*2*pi*fdoppler.*t));