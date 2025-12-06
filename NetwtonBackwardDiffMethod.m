% Newton's Backward Difference Method
clear all;
clc;

disp(['Computed on: ', datestr(now, 'yyyy-mm-dd HH:MM:SS')]);

x = input('Enter the x values (data points): ');
y = input('Enter the corresponding y values (data points): ');

n = length(x);

% Backward difference table
b_diff = zeros(n, n);
b_diff(:,1) = y(:);

for j = 2:n
    for i = n:-1:j
        b_diff(i,j) = b_diff(i,j-1) - b_diff(i-1,j-1);
    end
end

disp('Backward Difference Table:');
disp(b_diff);

eval_X = input('Enter the value of X to evaluate the polynomial: ');

h = x(2) - x(1);
u = (eval_X - x(n)) / h;

P = y(n);
prod_term = 1;

for k = 2:n
    prod_term = prod_term * (u + (k-2));
    P = P + (b_diff(n,k) * prod_term) / factorial(k-1);
end

fprintf('The value of the polynomial at X = %.4f is: %.4f\n', eval_X, P);

