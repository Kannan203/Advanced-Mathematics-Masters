function [ output_args ] = testfixpt( f,x0 )
% %UNTITLED2 Summary of this function goes here
% %   Detailed explanation goes here
clc;
clf;
hold on
% x0=0.5;
% n=10;
% syms y
% f(y)=0.5*exp(-y^2)
x1=f(x0);
n=0;
while (abs(f(x1)-x1)>10^-12)
  x2=f(x1);
  x1=x2;
%   plot([x1 f(x1)],[x1 x1]);
%    plot([x1 f(x1)],[f(x1) f(x1)]);
%     plot([f(x1) f(x1)],[f(x1) f(f(x1))]);
n=n+1;
end
x1
z=linspace(0.4,0.5);
plot(z,f(z));
plot(z,z,'k');
L=abs(f(2)-f(f(2))/2-f(2))
syms x
g(x)=diff(f(x))
convspeed=g(x0)
k=log((10^-12)*abs(1-L)/abs(f(x0)-x0))/log(L)
end

