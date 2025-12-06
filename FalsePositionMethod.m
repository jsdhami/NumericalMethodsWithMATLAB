% False Position Method
clear all;
clc;

disp(['Computed on: ', datestr(now, 'yyyy-mm-dd HH:MM:SS')]);

f = @(x) x.^3 - x.^2 + x - 7;

a = input('Enter first point: ');
b = input('Enter second point: ');
etol = input('Enter error of tolerance: ');

fprintf('\nCount\t a\t\t b\t\t c\t\t f(c)\n');

count = 0;

while abs(f(a)) > etol
    c = (a*f(b) - b*f(a)) / (f(b) - f(a));

    if f(a) * f(c) < 0
        b = c;
    else
        a = c;
    end

    fprintf('%d\t %f\t %f\t %f\t %f\n', count, a, b, c, f(c));
    count = count + 1;
end

fprintf('\nRoot = %f\n', c);
fprintf('Converged in %d iterations\n', count);
