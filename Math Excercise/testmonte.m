function [ output_args ] = testmonte( f,a,b,c,d )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
B=b-a;
H=d-c;
k=0;
n=0;
i=1;
% while i==1
for i=1:100
    x= a+(b-a)*rand;
%     y= c+(d-c)*rand;
    k=k+1;
    f(x);
    if x^2+f(x)^2<1
         n=n+1;
    end
    area=(n/k)*B*H
    if abs((area)-(pi/4))<10^-3
        break;
    end
end
k
n
area=(n/k)*B*H
end

