function [Max_Corr,index] = Acquisition_search(codeLength,nms,doppler_search,fdoppler_step,clk,IQ)
    for SV = 1:32
        % Generate gold code
        gc = data_mapper(gold_code_L1(codeLength,SV));
        gc = upsampler(gc,4);
        gc = expand(gc,nms);
        
        w = 1;
        for w_doppler = -doppler_search/2:fdoppler_step:doppler_search/2
            doppler_wave = exp(1i*2*pi*w_doppler*(0:length(IQ)-1)/(clk*nms)); % O misturador deve ser complexo de forma a eliminar o efeito doppler
            IQ_fft = fft(downsampler(IQ.*doppler_wave,25,5));
            GC = fft(gc);
            [Max_Corr(SV,w), index(SV,w)] = max(abs(ifft(IQ_fft.*conj(GC))).^2);
            w = w + 1;
        end
    end
end