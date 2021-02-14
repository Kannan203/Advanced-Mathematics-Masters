function [ output_args ] = testlet( X,Y )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
clc
% clear all;
syms x
% F=[sin(x);cos(x);x^3];
F=[x^2;x;x^0]
G=F*F';
G
for i=1:size(G,1)
     f2(x)=F(i,1);
    for j=1:size(G,2)
        f1(x)=G(i,j);
        h=0;
         w=0;
        for k=1:size(X,1)
            h=h+f1(X(k,1));
            w=w+f2(X(k,1))*Y(k,1);
        end
        A(i,j)=h;   
    end
    b(i,1)=w;
end
    
b   
A
a=linsolve(A,b)
C(x)=0*x;
for i=1:size(F,1)
    C(x)=C(x)+a(i,1)*F(i,1);
end
C(x)
plot(X,Y,'b');
plot(X,C(X),'k');
end

