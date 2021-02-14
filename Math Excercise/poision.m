clc;
clear;
clf;
hold on;
a=0.01;
b=1;
n=0;
for nn=1:100
n=n+1;
    cn=(a/b)^n;%concentration when water is poured

if cn<10^-9 & cn>0 %we need cn <e
    break;
end
end
cn

disp('no of iterations=')
n
disp('total vol of water=')
d=(b-a)*n
% % to reduce b?
e=10^-9
for b=(a+0.01):0.01:1
n=(log(e)/(log(a)-log(b)));%cn=(a/b)^n,n=log(cn)/log(a/b),but we need cn >e
d=(b-a)*n%total vol
plot(d,b,'*');%plot of change in vol with change in b
end
disp('as the graph is monotonically increasing so least b gives least b ');
% 