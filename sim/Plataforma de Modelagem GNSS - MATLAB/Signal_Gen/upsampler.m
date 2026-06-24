function out = upsampler(in,k)
lengthIn = length(in);
    out = zeros(1,k*lengthIn);
    for j = 1:lengthIn
        out(((j-1)*k)+1:k*j) = [in(j).*ones(1,k)];
    end
end