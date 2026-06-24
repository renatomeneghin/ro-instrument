function out = downsampler(in,k,phase)
    lengthIn = length(in);
    if nargin == 2
        phase = 0;
    end
    for n=0:floor(lengthIn/k)-1
        out(n+1)=in(k*n+1+phase);
    end
end