% Runge-Kutta Method (4th order) to solve a differential equation
clear all;
clc;

disp(['Computed on: ', datestr(now, 'yyyy-mm-dd HH:MM:SS')]);

x0 = input('Enter initial value of x (x0): ');
h  = input('Enter step size h: ');
xn = input('Enter the final value of x (xn): ');
y0 = input('Enter initial value of y (y0): ');

x = x0:h:xn;
y = zeros(1, length(x));
y(1) = y0;

% Given differential equation
f = @(t, r) (r^2 - t^2) / (r^2 + t^2);

fprintf('\nIteration\t x\t y\t k1\t k2\t k3\t k4\n');

for i = 1:(length(x) - 1)
    k1 = f(x(i), y(i));
    k2 = f(x(i) + 0.5*h, y(i) + 0.5*h*k1);
    k3 = f(x(i) + 0.5*h, y(i) + 0.5*h*k2);
    k4 = f(x(i) + h,     y(i) + h*k3);

    y(i+1) = y(i) + (h/6)*(k1 + 2*k2 + 2*k3 + k4);

    fprintf('%d\t\t %.4f\t %.4f\t %.4f\t %.4f\t %.4f\t %.4f\n', ...
            i, x(i), y(i), k1, k2, k3, k4);
end

fprintf('\nThe solution at x = %.4f is: %.4f\n', x(end), y(end));

