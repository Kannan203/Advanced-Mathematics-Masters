clc;
clf;
clear all
x=linspace(-pi,pi);
% x=4
% y=zeros(1,10);
y=0;

hold on
for n=1:20
   c=(-1)^(n+1);
   y=((c*(x.^(2*n-1)))/factorial(2*n-1))+y;

end
y;
x1=cos(x);
plot(x,x1,'k');
plot(x,y,'b');

