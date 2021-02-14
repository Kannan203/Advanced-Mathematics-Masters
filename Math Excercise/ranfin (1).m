clc;
clear;
a=7141;
b=54773;
m=259200;
xo=1;
per=0;
for i=1:259201
  xn(i)=mod(((a*xo)+b),m);
  xo=xn(i);
  if xn(1)==xn(i)
%    per=per+1;
disp('per');
disp(i);
    end
    end
 
    b=dec2bin(xn);
    b
    [m n]=size(b);
    c=strcat(b(:));
    d=str2num(c);
    d
    [m n]=size(d);
    e=sum(d);
    mean1=sum(d(:))/(m*1);
    mean1
    %neumann
[p q]=size(d);
z=zeros(p,1);
k=1;
for i=1:2:(p)
  if d(i)==0 && d(i+1)==1
    z(k)=0;
    k=k+1;
  elseif d(i)==1 && d(i+1)==0
    z(k)=1;
    k=k+1;
    end
    end
    z
    [r s]=size(z);
    mean2=sum(z(:))/(r*s);
    mean2
    
  

  