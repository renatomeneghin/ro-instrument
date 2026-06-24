function out = code_discriminator(IE,QE,IP,QP,IL,QL)      % Code Discriminator
    E = sqrt(IE^2 + QE^2);
    L = sqrt(IL^2 + QL^2);
    out = (E - L)./(E + L);  % Normalized early-minus-late
%    out = ((IE-IL)*IP + (QE-QL)*QP)/2;
%    out = .5*(sqrt(IE.^2 + QE.^2) - sqrt(IL.^2 + QL.^2))/2;
%    out = ((IE-IL))/sqrt(IP^2+QP^2);
end