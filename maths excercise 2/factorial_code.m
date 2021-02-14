function run_excercise38a()
excercise38a(5);
end
function fact = excercise38a(n)
if (n==0 || n==1)
    fact = 1
else 
      fact = 1;
for i = 1:n
    fact=i*fact
end
end
end