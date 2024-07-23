% Define the differential equation
f = @(x, y) 1 + y^2;

% Initial conditions from Runge-Kutta method
x_values = [0, 0.2, 0.4, 0.6];
y_values = [0, y(2), y(3), y(4)]; % Replace y(2), y(3), y(4) with actual values

% Compute function values
f_values = arrayfun(f, x_values, y_values);

% Step size
h = 0.2;

% Adams-Bashforth Method (4-step)
f0 = f_values(1);
f1 = f_values(2);
f2 = f_values(3);
f3 = f_values(4);

y_next = y_values(end) + (h / 24) * (55 * f3 - 59 * f2 + 37 * f1 - 9 * f0);

% Display the result for y(0.8)
disp(['y(0.8) = ', num2str(y_next)]);
