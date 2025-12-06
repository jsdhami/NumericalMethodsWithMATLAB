% Matrix Inversion Method to solve a system of linear equations
clear all;
clc;

disp(['Computed on: ', datestr(now, 'yyyy-mm-dd HH:MM:SS')]);

fprintf('Enter the matrix A (n x n matrix):\n');
A = input('Matrix A (n x n matrix): ');
b = input('Vector b (n x 1 vector): ');

[n, m] = size(A);

if n ~= m
    error('Matrix A must be square!');
end

if det(A) == 0
    error('Matrix A is singular and cannot be inverted!');
end

A_inv = inv(A);
x = A_inv * b;

fprintf('The solution vector x is:\n');
disp(x);

