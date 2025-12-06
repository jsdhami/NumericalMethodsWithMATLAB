clear all;
clc;

disp(['Computed on: ', datestr(now, 'yyyy-mm-dd HH:MM:SS')]);

A = input('Matrix A (n x n matrix): ');
b = input('Vector b (n x 1 vector): ');
n = length(b);

x = zeros(n,1);
etol = input('Enter error tolerance: ');
max_iter = input('Enter maximum iterations: ');

count = 0;

while count < max_iter
    x_old = x;

    for i = 1:n
        s = 0;
        for j = 1:n
            if j ~= i
                s = s + A(i,j) * x(j);
            end
        end
        x(i) = (b(i) - s) / A(i,i);
    end

    err = norm(x - x_old, inf);
    fprintf('Iteration %d:\n', count + 1);
    disp(x);

    if err < etol
        break;
    end

    count = count + 1;
end

fprintf('Solution vector x:\n');
disp(x);
fprintf('Converged in %d iterations\n', count);
