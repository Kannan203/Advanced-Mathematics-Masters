clear all;
% setting the number of random numbers to get
rand_nums=10;
% setting the number of lowest bits to get from random numbers
rand_bits=8;


% setting the coefficients
a=7141;
b=54773;
m=259200;

% setting the seed
x_values(1)=6599431648461;

% calculating random values according to the algorithm
for nn=2:rand_nums;
    x_values(nn)=mod((a*x_values(nn-1)+b),m)
end  
% 
% taking the last rand_bits bits of it
 
for nn=1:rand_nums;
  for bb=1:rand_bits;
     x_bits((nn-1)*rand_bits+bb)=bitget(x_values(nn),rand_bits+1-bb) 
  end
end
disp ('The random bits sequence is created')
%
%  
%
% .................testing the periodicity................................. 
% num_bits=length(x_bits);   % the length of bits sequence 
% 
% setting the length of pattern
patt_length=8;
% setting the number pattern repetition
patt_rep=0;
% setting the number of max pattern repetition
patt_rep_max=0;
%number_of_patterns=2^patt_length

for rr=0:(2^patt_length-1);
  patt_bits=bitget(rr,patt_length:-1:1); % setting the pattern
  patt_rep=0;
   for nn=1:patt_length:num_bits-patt_length+1;
     num_equal_bits=patt_length;   % setting the counter 
           % comparing its in sequence with the pattern
           for kk=1:patt_length;
             num_equal_bits=num_equal_bits-xor(x_bits(nn-1+kk),patt_bits(kk));
           end
      % if pattern equals part of sequence
      if (num_equal_bits==0);
        patt_rep=patt_rep+1; 
      end
   end
  if (patt_rep>patt_rep_max); 
    patt_rep_max=patt_rep;    % getting the number of maximun repetitions     
    patt_bits_max=patt_bits;  % getting the most popular pattern
  end 
  %if (mod(rr+1,16)==0);  
  %  patterns_checked=rr+1      % counter to see it works:))))
  %end  
end
%
length_of_pattern=patt_length
number_of_maximum_pattern_repetitions=patt_rep_max
pattern=patt_bits_max
%
%
%
% .........................testing the symmetry.................... 

sum_of_bits=0;             % sum of bits in sequence   

for nn=1:num_bits;
  sum_of_bits=sum_of_bits+x_bits(nn);
end
mean_of_bits=sum_of_bits/num_bits % mean value of sequence
deviation=0.5-mean_of_bits        % devation of mean from 1/2
number_of_random_numbers=length(x_values)
number_of_bits_get=num_bits
%
%
%
% .........................Neumann filter....................
disp("") 
disp ("Applying Neumann filter")
disp("") 
for nn=1:2:num_bits-1;
     if xor(x_bits(nn),x_bits(nn+1));
       kk=kk+1;
        if (x_bits(nn)==0);     
             x_neum_bits(kk)=0;
        else
             x_neum_bits(kk)=1;
        end
     end
end
%
num_neum_bits=length(x_neum_bits);   % the length of bits sequence after Neumann filter
length_of_sequence_after_Neumann=num_neum_bits
%
%
% .......................testing the periodicity after Neumann....................
%
patt_rep_neum_max=0;

for rr=0:(2^patt_length-1);
  patt_bits=bitget(rr,patt_length:-1:1); % setting the pattern
  patt_rep=0;
   for nn=1:patt_length:num_neum_bits-patt_length+1;
     num_equal_neum_bits=patt_length;   % setting the counter 
           % comparing its in sequence with the pattern
           for kk=1:patt_length;
             num_equal_neum_bits=num_equal_neum_bits-xor(x_neum_bits(nn-1+kk),patt_bits(kk));
           end
      % if pattern equals part of sequence
      if (num_equal_neum_bits==0);
        patt_rep=patt_rep+1; 
      end
   end
  if (patt_rep>patt_rep_neum_max); 
    patt_rep_neum_max=patt_rep;    % getting the number of maximun repetitions     
    patt_bits_neum_max=patt_bits;  % getting the most popular pattern
  end 
end
%
length_of_pattern=patt_length
number_of_maximum_pattern_repetitions=patt_rep_neum_max
pattern=patt_bits_neum_max


% .......................testing the symmetry after Neumann.................... 

sum_of_neum_bits=0;             % sum of bits in sequence   

for nn=1:num_neum_bits;
  sum_of_neum_bits=sum_of_neum_bits+x_neum_bits(nn);
end
mean_of_Neumann_bits=sum_of_neum_bits/num_neum_bits % mean value of sequence
deviation=0.5-mean_of_Neumann_bits        % devation of mean from 1/2
disp ("-----------The end of program------------------")







 