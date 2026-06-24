function Result = Acquisition(I,Q,Acquisition_len,codeLength,nms,doppler_search,fdoppler_step,clk)
I_acquisition = I(1:Acquisition_len);
Q_acquisition = Q(1:Acquisition_len);
IQ = I_acquisition + 1i*Q_acquisition;

[Max_Corr,index] = Acquisition_search(codeLength,nms,doppler_search,fdoppler_step,clk,IQ);

[sv, w_] = find((Max_Corr > 1e6) == 1);
W_ = -doppler_search/2 + fdoppler_step*(w_-1);
chips = 0;
for n = 1:length(sv)
    chips(n) = round(index(sv(n),w_(n))/4);
end

Result = sortrows([sv,W_,chips']); %Fim da aquisição
end