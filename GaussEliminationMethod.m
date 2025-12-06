% Gauss Elimination Method to solve a system of linear equations
clear all;
clc;

disp(['Computed on: ', datestr(now, 'yyyy-mm-dd HH:MM:SS')]);

% Input augmented system
fprintf('Enter the coefficient matrix A (n x n):\n');
A = input('Matrix A: ');
b = input('Vector b (n x 1): ');

n = length(b);
Ab = [A, b];  % Form augmented matrix

% Forward elimination with partial pivoting
for i = 1:n
    % Partial pivoting
    [~, j] = max(abs(Ab(i:n, i)));
    j = j + i - 1;
    if j ~= i
        Ab([i, j], :) = Ab([j, i], :);
    end

    % Eliminate entries below pivot
    for k = i+1:n
        factor = Ab(k,i) / Ab(i,i);
        Ab(k,:) = Ab(k,:) - factor * Ab(i,:);
    end
end

% Back substitution
x = zeros(n, 1);
for i = n:-1:1
    x(i) = (Ab(i,end) - Ab(i,1:n) * x) / Ab(i,i);
end

fprintf('The solution vector x is:\n');
disp(x);

