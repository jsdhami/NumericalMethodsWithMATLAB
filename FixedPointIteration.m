% Fixed-Point Iteration Method
clear all;
clc;

disp(['Computed on: ', datestr(now, 'yyyy-mm-dd HH:MM:SS')]);

% Define the function x = f(x)
f = @(x) cos(x);  % You can change this to any suitable g(x)

% User inputs
x = input('Enter initial guess: ');
etol = input('Enter error tolerance: ');
max_iter = input('Enter maximum iterations: ');

count = 0;

fprintf('\nCount\t x\t f(x) = g(x)\n');

% Iteration loop
while count < max_iter
    b = f(x);  % Compute next approximation

    fprintf('%d\t %f\t %f\n', count, x, b);

    % Check convergence
    if abs(b - x) < etol
        break;
    end

    x = b;          % Update current value
    count = count + 1;
end

fprintf('\nRoot is: %f\n', x);
fprintf('Converged in %d iterations\n', count);

