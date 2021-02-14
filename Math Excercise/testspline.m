function [ output_args ] = testspline(X,Y )%f,a,b,n 
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
clc;
% c=linspace(a,b,n);
% X=c'
% Y=f(X)
X
Y
for i=1:size(X,1)-1
    h(i,1)=X(i+1,1)-X(i,1);
end
h
for i=1:size(X,1)-2
    H(i,i)=2*(h(i,1)+h(i+1,1));
    H(i,i+1)=h(i+1,1);
    H(i+1,i)=h(i+1,1);
    R(i,1)=(6/h(i+1,1))*(Y(i+2,1)-Y(i+1,1))-(6/h(i,1)*(Y(i+1,1)-Y(i,1)));
end
H
R
for i=1:size(X,1)-2
    for j=1:size(X,1)-2
    K(i,j)=H(i,j)
    end
end
K
Y2=linsolve(K,R)
for i=1:size(X,1)-2
    y2(i+1,1)=Y2(i,1);
end
y2(size(X,1),1)=0
for i=1:size(X,1)-1
    a(i,1)=(y2(i+1,1)-y2(i,1))/6*h(i,1);
    b(i,1)=y2(i,1)/2;
    c(i,1)=((Y(i+1)-Y(i,1))/h(i,1))-(y2(i+1,1)+2*y2(i,1))*h(i,1)/6;
    d(i,1)=Y(i,1)
end
a
b
c
d
syms x
for i=1:size(X,1)-1
    C(i,1)=a(i,1)*(x-X(i,1))^3+b(i,1)*(x-X(i,1))^2+c(i,1)*(x-X(i,1))+d(i,1)
end
C
end

