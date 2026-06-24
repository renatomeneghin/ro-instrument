clear all
close all
clc


%%                       Signal Characterstics                            

%rawdata = randi([0 1], [1 50e3]); 
rawdata = [1 0 1 1 0 1];
%rawdata = [1 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1 1 0 1 0 1 1 0 1 1 1];

fc = 1575.42e6;       % Carrier frequency
sv_id = 1;           % Satellite Vehicle ID
n = 1;                % BPSK(1) fc = n*1.023e6; %code rate BPSK(n) spreading code rate n*1.023 MHz
codeLength =  round(1023/n);    


%%                          Signal modulation                              

data = BPSKModulation(rawdata, codeLength, sv_id, fc, n);


%%                           Frequency Domain                             
%-------------------------------------------------------------------------%
dataFFT=fft(rawdata);
dataFFT=fftshift(dataFFT);

%FFT of modulated signal 
modulated=fft(data(1:round(length(data)))); 
modulated=fftshift(modulated);

w0=(0:2*pi/length(data):2*pi);

global Fs
fs=Fs;

f=(w0.*fs)/(pi.*2);
f1=linspace(0,f(length(f)),length(modulated));

dataFFT=[abs(dataFFT) zeros(1,length(modulated)-length(dataFFT))];


%% channel multipath configuration
%AWGN -20 -15 -10 -5 0 1 20
SNR = 5;

%channel_signal=awgn(data, SNR, 'measured');

%% Signal demodulation                            
nbit = length(rawdata);
%[demodulated,Id,Qd] = BPSKDemodulation(channel_signal, codeLength, sv_id, fc, fs, nbit);
[demodulated,Id,Qd] = BPSKDemodulation(data, codeLength, sv_id, fc, fs, nbit);

demodulated


% %%  Multiple SNR Simulation
% % channel multipath configuration
% %AWGN -20 -15 -10 -5 0 1 20
% SNR =[-20 -19.5 -19 -18.5 -18 -17.5 -17 -16.5 -16 -15.5 -15 -14.5 -14 -13.5 -13 -12.5 -12 0 5 10 15];
% 
% %%MATLAB CURVA TEORICA BERTOOL;
% % SNR = 20;
% 
% for n=1:length(SNR)
%     channel_signal=awgn(data, SNR(n), 'measured');
% 
% % Signal demodulation                            
%     nbit = length(rawdata);
%     [demodulated,Id,Qd] = BPSKDemodulation(channel_signal, codeLength, sv_id, fc, fs, nbit);
% 
% % BER Analysis                                  
%     b_error=sum(xor(demodulated,rawdata));
%     BER(n)=b_error/length(rawdata);
% end
% 
% figure;
%  semilogy(SNR,smooth(BER))
%  legend('Canal AWGN');
%  title(['SNR x BER com modulação BPSK']);
%  ylabel('BER')
%  xlabel('SNR')
% grid minor
% 