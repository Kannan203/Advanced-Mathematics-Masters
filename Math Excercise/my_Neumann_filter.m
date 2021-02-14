 %Created: 2017-11-20

%function x_neum_bits=my_Neumann_filter(x_bits);
TEST=[1 0 1 0 0 1 1 0 1 1 1 0 1 0 0 0 1];
x_bits=TEST;
num_bits=length(x_bits)
kk=0;
for nn=1:2:num_bits-1;
   %xor(x_bits(nn),x_bits(nn+1));
    % if xor(x_bits(nn),x_bits(nn+1));
       kk=kk+1;
        x_bits(nn);
        if (x_bits(nn)==0);   
             x_neum_bits(kk)=0;
        else
             x_neum_bits(kk)=1;
        end
    % end
end
disp(x_neum_bits)

%endfunction
