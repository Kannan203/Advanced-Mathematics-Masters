clc
clear;
clf;
n=10;
i=1;
hold on;
b=0;
c=zeros(n,3);
for i=0:n
    a=1/(factorial(i));
    plot(i,a,'*');
    b=a+b;
end
b
