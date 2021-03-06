clf;
clc;
clear;
c = 0;
x = linspace(-2*pi,2*pi,100);
y = exp(x);
n = 20;
deriv = [1 1 1 1];%[1 0 -1 0] for sin(x) & change c = 0% %[1 1 1 1] for exp(x)%
for i = 1:n-1
  t(i+1,:)= deriv(1)*(x-c).^(i)/factorial(i);
  deriv = circshift(deriv,-1);
end
stp = sum(t);
plot(y,'r');
hold on;
plot(stp,'b');
