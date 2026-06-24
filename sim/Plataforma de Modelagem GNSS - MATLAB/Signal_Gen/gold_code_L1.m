
%%                    Generate PRN code: gold code                         % 

function out = gold_code_L1(codelength,SV)

shift_G1_reg = [ones(1,10)];
shift_G2_reg = [ones(1,10)];

len = codelength;
G1 = zeros(1,len);           
G2 = zeros(1,len);           
L1_CA_code = zeros(1,len);   

%satelitte
sv = satv(SV);

%Creating CA code
for k1 = 1:1:len         
    G1(k1) = shift_G1_reg(10);
    G2(k1) = xor(shift_G2_reg(sv(1)),shift_G2_reg(sv(2)));     
    
    L1_CA_code(k1) = xor(G1(k1),G2(k1));         
    
    feedback_G1 = xor(shift_G1_reg(3),shift_G1_reg(10));                                                                          
    feedback_G2 = xor(shift_G2_reg(2),xor(shift_G2_reg(3),xor(shift_G2_reg(6),xor(shift_G2_reg(8),xor(shift_G2_reg(9),shift_G2_reg(10)))))); 

    %shifting vector
    for k2 = 10:-1:2
        shift_G1_reg(k2) = shift_G1_reg(k2-1);
        shift_G2_reg(k2) = shift_G2_reg(k2-1);
    end
    shift_G1_reg(1) = feedback_G1;
    shift_G2_reg(1) = feedback_G2;
end

%Tranform binary to bipolar data
out = (L1_CA_code);
end