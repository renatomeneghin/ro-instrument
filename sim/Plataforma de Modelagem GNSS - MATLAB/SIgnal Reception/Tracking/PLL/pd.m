function out = pd(I,Q)      % Phase Detector
    %if I ~= 0
    %    out = atan(Q./I)/(2*pi);
    %else
    %    out = 0;
    %end
    %out = (atan2(Q, I));
    %out = Q/sqrt(I^2 + Q^2);
    out = Q.*sign(I);
end