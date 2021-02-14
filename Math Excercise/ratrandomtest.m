clc;
clear;
x=rand(3);
a=7141;
b=54773;
m=259200;
X=zeros(3);
for nn=1:size(x,1)
    for mm=1:size(x,2)
        X(nn,mm)=(a*x(nn,mm)+b)* mod (x(nn,mm),m);
        %Y(nn,mm)=bitget()
        
        disp(X);
    end
end
Y=fi(X);
disp(bin(Y));