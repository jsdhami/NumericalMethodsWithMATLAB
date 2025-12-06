% Lagrange Interpolation - Numerical Version
clear all;
clc;

disp(['Computed on: ', datestr(now, 'yyyy-mm-dd HH:MM:SS')]);

% Input data points
x = input('Enter the x values (data points): ');
y = input('Enter the corresponding y values (data points): ');

% Input point to evaluate
eval_X = input('Enter the value of X to evaluate the polynomial: ');

n = length(x);
P = 0; % Initialize interpolated value

% Compute Lagrange interpolation
for i = 1:n
    L = 1;
    for j = 1:n
        if j ~= i
            L = L * (eval_X - x(j)) / (x(i) - x(j));
        end
    end
    P = P + y(i) * L;
end

% Display result
fprintf('The value of the polynomial at X = %.4f is: %.4f\n', eval_X, P);

