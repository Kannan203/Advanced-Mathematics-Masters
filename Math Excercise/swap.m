clc;
clear;
 a=[0 -2 -2;-8 0 -5;-7 -8 0];


%  a=[0 0 3 ;0 2 0 ;1 0 0];
%   a=[0 0 -3 ;0 0 -5 ;1 -3 0];
[m n]=size(a);

b=sortrows(a,-1)
for i=1:m-1
%     max(a(:,i))
%     a(i,i)
% if max(a(:,i))~=a(i,i)
 if b(i,i)~=0
  continue;
 else
% b(i,:)
%   b(i+1,:)
  t=b(i,:);
  b(i,:)=b(i+1,:);
  b(i+1,:)=t;
%    if b(i,i)~=0
%        continue;
%    else
%          t=b(i,:);
%   b(i,:)=b(i-1,:);
%   b(i-1,:)=t;
%   b(i,:)
%   b(i+1,:)
  end
 end

  b