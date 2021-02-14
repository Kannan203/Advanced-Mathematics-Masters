clc;
clear all;
clf;




%fixed poit method

%test for fixed point with cos
% x0=0.5;
% x=x0;
% for i=1:50
%     x=cos(x);
%     x
% end

x0=3;
syms x y
f(x)=0.5*(exp(-x^2));%function
x1=x0;
m=linspace(0,1);
n=m;
hold on
plot(m,n);%ploting y=x
plot(m,f(m));%ploting f(x)=x
for i=1:15
    x1=f(x1);
    plot([x1 x1],[f(x1) x1],'k-');%ploting fixed point
end