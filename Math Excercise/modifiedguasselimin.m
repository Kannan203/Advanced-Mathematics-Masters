clc;
clear;
clf;
% a=[1 2 3;4 5 6;7 8 9];f;
a=rand(4);
[m n]=size(a);
b=zeros(3,3);
for i=1:m-1
    for u=i+1:m
%      k=a(i+1,1)/a(1,1);
      k=a(u,i)/a(i,i);
    for j=1:n
       
%         b(1,j)=a(1,j);
        a(u,j)=a(u,j)-(k*a(i,j));
        
    end
    end
end
disp(a)