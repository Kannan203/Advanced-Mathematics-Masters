clc;
clear all;
clf;
hold on
xaxis=plot([-7 7],[0 0])
yaxis=plot([0 0],[-7 7])
%bisction method
% a=-1;
% b=4;
% 
% syms x
% f(x)=x-(0.5*(exp(-x^2)));%function
% % f(x)=x^3-1
% m=linspace(0,4);
% plot(m,f(m))
% 
% for i=1:30
%     c=(a+b)/2
%     if f(c)<0
%         a=c;
%         
%     elseif f(c)>0
%         b=c;
%         
%     else
%         break;
%     end
%  
% end
% plot(c,f(c),'*k')   
% c 


%% fixed poit method%%

%test for fixed point with cos
% x0=0.5;
% x=x0;
% for i=1:50
%     x=cos(x);
%     x
% end
% %og
x0=3;
syms x 
f(x)=0.5d*(exp(-x^2));%function
x1=x0;
m=linspace(0,1);
n=m;
hold on
plot(m,n);%ploting y=x
plot(m,f(m));%ploting f(x)=x
for i=1:15
    x1=f(x1);
     plot([x1 x1],[x1 f(x1)],'b-')
    plot([x1 f(x1)],[f(x1) f(x1)],'k-');%ploting fixed point
  if(abs(f(f(x1))-f(x1)))  
end
x1
%% new method my method solvingx=f(x)eqn
% syms x
% f(x)=(0.5*(exp(-x^2)));
% g(x)=x;%function
% % f(x)=x^3-1
% m=linspace(0,4);
% plot(m,f(m));
% plot(m,g(m));
% for i=0.3:0.01:0.5
%     f(i);
%     g(i);
% if f(i)==g(i)
%     disp(i)
%     break;
% end
% end