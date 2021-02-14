clc;
clear;
clf;
syms x
% f(x)=(x-(.5*exp(-x.^2)));

z(x)=diff(f(x));
x1=0;
iteration=0;

while abs(f(x1)-x1) > 1e-13  
    
   a=f(x1)/z(x1);
    x2=x1-a;
    x1=x2;
    iteration=iteration+1;


end
disp(x1)
iteration
function out =f(x)

out=(x-(.5*exp(-x.^2)));
end
