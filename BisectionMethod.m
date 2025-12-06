%bisection method
clear all;
clc;

disp(['Computed on: ', datestr(now, 'yyyy-mm-dd HH:MM:SS')]);

% Define the function
f = @(x) x.*exp(x) - cos(x);

% User input
a = input('Enter lower guess a: ');
b = input('Enter upper guess b: ');
etol = input('Enter error tolerance: ');

% Compute required iterations
itr = (log(b - a) - log(exp(1))) / log(2);
fprintf('Required iterations = %d\n', ceil(itr));

% Check sign change
if f(a) * f(b) > 0
    fprintf('Invalid interval. f(a) and f(b) must have opposite signs.\n');
else
    fprintf('\nIter\t   a\t\t       b\t\t       c\t\t       f(c)\n');

    count = 0;

    while abs(b - a) > etol
        c = (a + b) / 2;
        count = count + 1;

        fprintf('%d\t %f\t %f\t %f\t %f\n', count, a, b, c, f(c));

        if f(a) * f(c) < 0
            b = c;
        else
            a = c;
        end
    end

    fprintf('\nRoot = %f\n', c);
    fprintf('Converged in %d iterations\n', count);
end
