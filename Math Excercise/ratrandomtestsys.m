clc;
clear;
x=rand;%random seed
a=7141;
b=54773;
m=259200;
for n=1:5
        X(n,1)=mod((a*x+b),m);%generates random values
        x=X(n,1);
        n=n+1;       
        disp(X);
end;
Y=fi(X)%making x a fixed integer
disp(bin(Y));%extracting bits using bin
Z=bin(Y);
%symmentric test
z=0;
W=zeros(100,16);
    for mm=1:size(Z,2)
        for nn=1:16
            W(mm,nn)=Z(1,nn);
        end
    end
    disp(W);
% mean=z/(100);
% disp (mean);