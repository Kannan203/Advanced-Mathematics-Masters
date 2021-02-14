
function [ b ] = fibi(n)
if n<0
    disp('error');
else
if n==1
    b=1;
elseif n==0
    b=0;
else
b=fibi(n-1)+fibi(n-2);
end
% disp (b)
end
end
