% Define the differential equation
f = @(x, y) -y;

% Initial condition
x0 = 0;
y0 = 1;

% Step size
h = 0.1;

% Number of steps
N = 2;

% Initialize arrays to store the results
x = zeros(1, N+1);
y = zeros(1, N+1);
x(1) = x0;
y(1) = y0;

% Euler's Method
for i = 1:N
    y(i+1) = y(i) + h * f(x(i), y(i));
    x(i+1) = x(i) + h;
end

% Display the results
disp(table(x', y', 'VariableNames', {'x', 'y'}));
