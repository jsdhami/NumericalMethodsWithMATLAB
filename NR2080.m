% Newton-Raphson Method to find real root of f(x) = 0
clear all;
clc;

disp(['Computed on: ', datestr(now, 'yyyy-mm-dd HH:MM:SS')]);

% Define function and its derivative
f  = @(x) x^3 - x - 1;      % Example function
df = @(x) 3*x^2 - 1;       % Derivative of f(x)

% Input values
x0 = input('Enter the initial guess: ');
etol = input('Enter the error tolerance: ');
max_iter = input('Enter maximum number of iterations: ');

fprintf('\nIter\t x\t\t f(x)\n');

for i = 1:max_iter
    x1 = x0 - f(x0)/df(x0);

    fprintf('%d\t %.6f\t %.6f\n', i, x1, f(x1));

    if abs(x1 - x0) < etol
        break;
    end

    x0 = x1;
end

fprintf('\nThe approximate root is: %.6f\n', x1);
fprintf('Converged in %d iterations\n', i);

