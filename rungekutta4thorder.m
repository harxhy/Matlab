% Define the differential equation
f = @(x, y) 1 + y^2;

% Initial conditions
x0 = 0;
y0 = 0;

% Step size
h = 0.2;

% Number of steps
N = 3;

% Initialize arrays to store the results
x = zeros(1, N+1);
y = zeros(1, N+1);
x(1) = x0;
y(1) = y0;

% Runge-Kutta Method IV
for i = 1:N
    k1 = f(x(i), y(i));
    k2 = f(x(i) + h/2, y(i) + h/2 * k1);
    k3 = f(x(i) + h/2, y(i) + h/2 * k2);
    k4 = f(x(i) + h, y(i) + h * k3);

    y(i+1) = y(i) + h/6 * (k1 + 2*k2 + 2*k3 + k4);
    x(i+1) = x(i) + h;
end

% Display the results
disp('Runge-Kutta Method IV Results:');
disp(table(x', y', 'VariableNames', {'x', 'y'}));
