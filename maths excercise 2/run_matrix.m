function run_matrix(a,b)
matrix([1 2;2 4],[4 5;4 5]);
end
function [c] = matrix(a,b)
[r1,c1] = size(a);
[r2,c2] = size(b);
if r1 ~= c2
    disp ('Matrix dimension not same')
else r1 == c2
    c = 0;
    for i = 1:r1
        for j = 1:c2
            for p = 1:c1
                c=c+a(i,p)*b(p,j);
            end
            s(i,j)=c
        end
    end
end
end
