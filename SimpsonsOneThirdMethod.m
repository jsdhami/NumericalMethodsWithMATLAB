% Simpson's 1/3 Rule for Numerical Integration
clear all;
clc;

disp(['Computed on: ', datestr(now, 'yyyy-mm-dd HH:MM:SS')]);

f = @(x) 1 / (1 + x^2);

a = input('Enter the lower limit of integration (a): ');
b = input('Enter the upper limit of integration (b): ');
n = input('Enter the number of subintervals (n, must be even): ');

if mod(n, 2) ~= 0
    error('Number of subintervals n must be even.');
end

h = (b - a) / n;
integral = f(a) + f(b);

for i = 1:n-1
    x = a + i * h;
    if mod(i, 2) == 0
        integral = integral + 2 * f(x);
    else
        integral = integral + 4 * f(x);
    end
end

integral = integral * (h / 3);

fprintf('The integral of the function from %f to %f is approximately:\n', a, b);
fprintf('I = %f\n', integral);

