clc;
clear;
clf;
x1=0;
iteration=0;
x=linspace(0,1);
y=x;
hold on
plot(x,y,'r-','linewidth',2);
plot(x,f(x),'b-','linewidth',2);
while abs (f(x1)-x1)> 1e-13
    x2=f(x1);
        k=abs(f(x2)-f(x1))/abs(x2-x1);
        x1=x2;
    iteration=iteration+1;
    
plot([x1 x1],[x1 f(x1)],'k-','linewidth',2);
plot([x1 f(x1)],[f(x1) f(x1)],'m-','linewidth',2);
end
x1
iteration
k
function out =f(x)
out=(.5*exp(-x.^2));
end