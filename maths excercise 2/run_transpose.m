function run_transpose(a)
transpose([1 2 3;3 4 5;6 7 8]);
end
function trans = transpose(a)
[r1 c1]=size(a);
c = 0;
for i = 1:r1
    for j = 1:c1
        c(j,i) = a(i,j);
    end
end
end