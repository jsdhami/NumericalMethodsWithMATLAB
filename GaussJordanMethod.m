% Gauss-Jordan Method to solve a system of linear equations
clear all;
clc;

disp(['Computed on: ', datestr(now, 'yyyy-mm-dd HH:MM:SS')]);

fprintf('Enter the coefficient matrix A (n x n):\n');
A = input('Matrix A: ');
b = input('Vector b (n x 1): ');

n = length(b);

% Form augmented matrix
Ab = [A, b];

% Gauss-Jordan elimination
for i = 1:n
    % Make the pivot element equal to 1
    Ab(i, :) = Ab(i, :) / Ab(i, i);

    % Make all other elements in the current column zero
    for j = 1:n
        if j ~= i
            factor = Ab(j, i);
            Ab(j, :) = Ab(j, :) - factor * Ab(i, :);
        end
    end
end

% Extract solution
x = Ab(:, end);

fprintf('The solution vector x is:\n');
disp(x);

