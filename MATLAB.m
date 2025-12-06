%% Basic Commands
clc;    % Clear command window
clear;  % Clear workspace
close all; % Close all figures

%% Variables
x = 10; % Assign a value
y = 5;
z = x + y; % Addition
A = [1 2 3; 4 5 6; 7 8 9]; % Matrix
B = A'; % Transpose of matrix A

%% Vectors & Matrices
v = [1, 2, 3, 4, 5]; % Row vector
w = [1; 2; 3; 4; 5]; % Column vector
M = zeros(3,3); % 3x3 Matrix of zeros
N = ones(3,3); % 3x3 Matrix of ones
I = eye(3); % 3x3 Identity matrix
D = diag([1 2 3]); % Diagonal matrix
randM = rand(3,3); % 3x3 Random matrix

%% Indexing
val = A(2,3); % Access element (row=2, col=3)
A(1,:) = [10 20 30]; % Modify row 1
A(:,2) = [100; 200; 300]; % Modify column 2

%% Operations
sumV = sum(v); % Sum of elements
prodV = prod(v); % Product of elements
meanV = mean(v); % Mean
stdV = std(v); % Standard deviation

%% Conditional Statements
if x > y
    disp('x is greater than y');
elseif x == y
    disp('x is equal to y');
else
    disp('x is less than y');
end

%% Loops
for i = 1:5
    disp(['Iteration: ', num2str(i)]);
end

k = 1;
while k <= 5
    disp(['While Loop Iteration: ', num2str(k)]);
    k = k + 1;
end

%% Functions
function result = myFunction(a, b)
    result = a + b;
end

%% Plotting
x = linspace(0, 10, 100);
y = sin(x);
figure;
plot(x, y, 'r-', 'LineWidth', 2);
xlabel('X-axis');
ylabel('Y-axis');
title('Sine Wave');
grid on;

%% Subplots
subplot(2,1,1);
plot(x, sin(x));
title('Sine Wave');
subplot(2,1,2);
plot(x, cos(x));
title('Cosine Wave');

%% File Handling
fid = fopen('data.txt', 'w');
fprintf(fid, 'Hello, MATLAB!\n');
fclose(fid);

fid = fopen('data.txt', 'r');
data = fscanf(fid, '%s');
fclose(fid);

%% Solve Linear Equations
A = [2 3; 4 5];
B = [5; 6];
x = A\B; % Solution of Ax = B

%% Symbolic Computation
syms x;
f = x^2 + 3*x + 2;
diff_f = diff(f); % Derivative
int_f = int(f); % Integral
answer = solve(f == 0, x); % Solve equation

disp(answer)
