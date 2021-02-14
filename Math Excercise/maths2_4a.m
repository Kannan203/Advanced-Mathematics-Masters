clc;
clear;
clf;
f=1;
n=5;
t=0;
for k=1:n
    f=f*k;
    p=1/f;
    t=t+p;
    hold on;
%     a(1,k)=k;
%     b(1,k)=p;
    plot(k,p,'*');
%     f=t+1;%bcs n should start from 0 so 1/0fact is =1
end
f=t+1;
% disp(t)
disp(f)
% disp(a)
% disp(b)
% plot(k,p)
%     plot(a,b,linespec);


% %using rato test
% f=1;
% n=4;
% t=0;
% for k=1:n
% %     j=1:n
%     f=f*k;
%     z(1,k)=1/f;
%     disp(z(1,k))
% end
% % disp(z(1,k))