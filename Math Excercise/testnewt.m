function [ output_args ] = testnewt( f,x1 )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
syms y
g(y)=diff(f(y));
% while abs(x1-f(x1))>10^-12
for i=1:2
    x2=x1-(f(x1)/g(x1));
    x1=x2;
end
% x2
x1
end

