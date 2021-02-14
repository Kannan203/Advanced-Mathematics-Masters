function [ output_args ] = testint( f,a,b,n )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
clc;
c=linspace(a,b,n);
X=c';
Y=f(X)
for k=1:n
for i=1:size(X,1)
    A(i,k)=(X(i,1)^(k-1));
end
end
A
a=linsolve(A,Y)

end

