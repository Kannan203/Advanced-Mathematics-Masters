function run_arrange(x,y)
arrange([4 1 6 10 -4 12 0.1],[-1 4 3 10 -9 15 -2.1]);
end
function arrange(x,y)
[xi,xj]=size(x);
[yi,yj]=size(y);
a =zeros(xi,1);
sum1 =0;
sum2 =0;
f = sort(x,'ascend');
g = sort(y,'ascend');
[fi,fj]=size(f);
[gi,gj]=size(g);
b=0;
c=0;
d=0;
e=0;
for i=1:length(x)
    c(i)=x(i)*y(i);
    for j=1:length(yj)
        a(i,j)=x(i,:)*y(:,j);
        b(i,j)=x(i)/y(j);
        d(i,j)=x(i)/(2+x(i)+y(j));
        if f(i)<g(j)
            e(i,j)=f(i);
        else
            e(i,j)=g(j);
        end
    end
            sum1 = sum1 + c(i);
        sum2 = sum(c);
end
h = x(end:-1:1)
k = y(end:-1:1)
disp('a=');disp(a)
disp('b=');disp(b)
disp(c)
disp('e=');disp(e)
disp(d)
sum1
sum2
end