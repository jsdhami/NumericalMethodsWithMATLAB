% RK-2 Method to solve IVP
clear all;
clc;

disp(['Computed on: ', datestr(now, 'yyyy-mm-dd HH:MM:SS')]);

% Define function f(x,y)
f = @(x,y) x + y;   % Example: dy/dx = x + y

% Input values
x0 = input('Enter initial value x0: ');
y0 = input('Enter initial value y0: ');
h  = input('Enter step size h: ');
xp = input('Enter the point xp: ');

% Number of steps
n = (xp - x0) / h;

fprintf('\nStep\t x\t\t y\n');

for i = 1:n
    k1 = h * f(x0, y0);
    k2 = h * f(x0 + h, y0 + k1);

    y1 = y0 + (k1 + k2)/2;
    x1 = x0 + h;

    fprintf('%d\t %.4f\t %.4f\n', i, x1, y1);

    x0 = x1;
    y0 = y1;
end

fprintf('\nThe value of y at x = %.4f is: %.6f\n', xp, y0);

