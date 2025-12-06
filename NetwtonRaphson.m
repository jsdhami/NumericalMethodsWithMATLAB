% Newton-Raphson Method
clear all;
clc;

disp(['Computed on: ', datestr(now, 'yyyy-mm-dd HH:MM:SS')]);

% Define the function
f  = @(x) x.*exp(x) - cos(x);

% Define the derivative
df = @(x) exp(x) + x.*exp(x) + sin(x);

% User input
a = input('Enter initial guess: ');
etol = input('Enter error tolerance: ');

fprintf('\nCount\t   a\t\t       f(a)\n');

count = 0;

% Newton-Raphson Iteration
while abs(f(a)) > etol
    fprintf('%d\t %f\t %f\n', count, a, f(a));

    b = a - f(a) / df(a);   % Newton-Raphson formula
    a = b;                  % Update value
    count = count + 1;
end

fprintf('\nRoot = %f\n', b);
fprintf('Converged in %d iterations\n', count);

