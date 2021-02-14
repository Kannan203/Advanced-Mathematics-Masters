clc;
clear;
syms t
n=6
a=zeros(n,3);
for nn=1:n
a(nn,1)=nn;    
a(nn,2)=int((log(1/t))^(nn-1),0,1);
a(nn,3) = factorial(nn-1);

end
a