clc;
clear;
clf;
a=0;
b=1;
c=(a+b)/2;
it=0;
hold on
plot([-5 5],[0 0],'k-');
plot([0 0],[-5 5],'k-');
x=linspace(0,1);
plot(x,f(x),'b-','linewidth',2);

while abs(f(c))> 1e-13
    c=(a+b)/2;
    if f(c)<0
        a=c;
    else
        b=c;
        it=it+1;
    end
end
c
it
plot(c,f(c),'*');
function out =f(x)
out=(x-(.5*exp(-x.^2)));
end