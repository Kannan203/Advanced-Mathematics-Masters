function run_recursive()
recursive(5);
end
function result = recursive(n)
if (n==1 || n==0)
    result = 1;
else n>1
    result = n*recursive(n-1);
end
disp(result)
end

