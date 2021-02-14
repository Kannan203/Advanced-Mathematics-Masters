clear all;
% .......setting the number of random numbers to get
rand_nums=100000;
% ........setting the number of lowest bits to get from random numbers
rand_bits=18;


% ........setting the coefficients
a=7141;
b=54773;
m=259200;

% ........setting the seed
x_values(1)=1;
nnmax=rand_nums;

% .......calculating random values according to the algorithm
for nn=2:rand_nums;
    x_values(nn)=mod((a*x_values(nn-1)+b),m); 
    if x_values(nn)==x_values(1);
      disp ("The number of independent created numbers");
      nnmax=nn % setting the length of the sequence in case of repeating
      break;
    endif  
end  
% 
% .........taking the last rand_bits bits of it
 
for nn=1:nnmax;
  x_bits(((nn-1)*rand_bits+1):(nn*rand_bits))=bitget(x_values(nn),rand_bits:-1:1); 
  end
disp ("The random sequence is created")
%
%flagmax=1;
%for nn=0:rand_nums;
  %flag=0;
%  if (nn==x_values(1:rand_nums));
%    flag=flag+1;
%  endif
  %if (flag>flagmax)
  %  flagmax=flag;
  %endif 
  
%endfor
% 
% 
%
