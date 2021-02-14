function L = lipschitz(fun)
x = rand*(0.69)
c = fun;
lips = max(abs(gradient(c)))
end
