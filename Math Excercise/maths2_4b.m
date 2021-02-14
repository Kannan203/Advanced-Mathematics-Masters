clc;
clear;
clf;
syms f(x);
f(x)=sin(x);
z=0;
for n=0:6
    k=factorial(n);
    v=x^n;
    c(x)=f(x);
    for i=1:n
       
    c(x)=diff(c(x));
%     c(i+1)=diff(c(i));
    
    end
    y=(c(0)*v)/k;
    z=z+y
end
disp(z)