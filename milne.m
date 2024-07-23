% Define the differential equation
f = @(x, y) 1 + y^2;

% Initial conditions from Runge-Kutta method
x_values = [0, 0.2, 0.4, 0.6];
y_values = [0, 0.0400, 0.1600, 0.3681];

% Compute function values
f_values = arrayfun(f, x_values, y_values);

% Step size
h = 0.2;

% Milne's Method (Predictor-Corrector)
% Predictor
y_next_pred = y_values(3) + (4 * h / 3) * (2 * f_values(4) - f_values(3));

% Compute f(x_next) for corrector
x_next = x_values(4) + h;
f_next = f(x_next, y_next_pred);

% Corrector
y_next = y_values(4) + (h / 3) * (f_values(3) + 4 * f_values(4) + f_next);

% Display the result for y(0.8)
disp(['y(0.8) = ', num2str(y_next)]);
