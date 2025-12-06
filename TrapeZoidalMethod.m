% Trapezoidal Rule for Numerical Integration
clear all;
clc;

disp(['Computed on: ', datestr(now, 'yyyy-mm-dd HH:MM:SS')]);

f = @(x) 1/(1 + x^2);

a = input('Enter lower limit of integral: ');
b = input('Enter upper limit of integral: ');
n = input('Enter number of sub-intervals: ');

h = (b - a)/n;
sum = 0;

for i = 1:n-1
    k = a + i*h;
    sum = sum + f(k);
end

I = h/2 * (f(a) + f(b) + 2*sum);

fprintf('The value of the integral is:\n');
fprintf('I = %f\n', I);

