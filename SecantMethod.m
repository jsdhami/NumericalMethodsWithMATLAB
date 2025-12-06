% Secant Method
clear all;
clc;

disp(['Computed on: ', datestr(now, 'yyyy-mm-dd HH:MM:SS')]);

% Define the function
f = @(x) x.^3 - x.^2 + x - 7;

% User input
a = input('Enter first point a: ');
b = input('Enter second point b: ');
etol = input('Enter error tolerance: ');

fprintf('\nCount\t   a\t\t       b\t\t       c\t\t       f(c)\n');

count = 0;

% Secant Iteration
while abs(f(b)) > etol
    c = (a*f(b) - b*f(a)) / (f(b) - f(a));   % Secant formula

    fprintf('%d\t %f\t %f\t %f\t %f\n', count, a, b, c, f(c));

    a = b;   % Update old value
    b = c;   % Update new value
    count = count + 1;
end

fprintf('\nRoot = %f\n', b);
fprintf('Converged in %d iterations\n', count);

