clc;
clear;
clf;
hold on;
set(gca,'Xlim',[-2*pi 2*pi],'Ylim',[-1.5 1.5]);
syms x
f(x)=sin(x);
n=10;
z(x)=0*x;
for i=1:n
    k(x)=f(x);
    for j=1:i    
    k(x)=diff(k(x));
    end
    m(x)=k(0)*((x-0)^i)*(1/factorial(i));
    z(x)=z(x)+m(x);
end
z(x)
y=linspace(-2*pi,2*pi);
plot(y,f(y),'g');
plot(y,z(y),'b');