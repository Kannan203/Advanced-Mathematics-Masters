function [ output_args ] = testtrap( f,a,b,N,k )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
clc;
for j=1:k
    n=N*2^(j-1);
X=linspace(a,b,n);
X=X';
h=(b-a)/(n-1);
d=0;
for i=1:n-1
d=d+0.5*f(X(i,1))+0.5*f(X(i+1,1));
end
C(1,j)=d*h;
end
C
A(:,1)=C';
for j=1:k
    m=k-j
for l=m:-1:1
det(l,j)=(A(l,j)-A(l+1,j))/2^((2*j)-1)
A(l,j+1)=A(l+1,j)+det(l,j);
end
end
A
end

