a=[1 1 1;2 2 2;3 3 3];
b=[5 5 5;6 6 6;7 7 7];
[m n]=size(a);
[r s]=size(b);
c=zeros(m,n);
if n~=r
    disp('matrix multi is not possible');
elseif n==r
    for i=1:m
        for j=1:s
            for k=1:n
                c(i,j)=c(i,j)+(a(i,k)*b(k,j));
            end 
        end
    end
end
disp(c)