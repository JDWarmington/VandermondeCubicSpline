clear; close all; clc;

% Part 1: 5 Data Points
x5 = [0, 1, 2, 3, 4]';
y5 = [1, 2, 1.5, 3, 2.5]';

% Construct Vandermonde matrix for the 5 data points
n5 = length(x5);
V5 = ones(n5);
for i = 2:n5
    V5(:,i) = x5.^(i-1);
end

% Solve for polynomial coefficients
a5 = V5\y5;  % coefficients of the polynomial

% Create a fine grid for plotting
xSquare = linspace(min(x5), max(x5), 200)';
% Polynomial evaluation using Horner's method or direct evaluation
ySquarePoly5 = zeros(size(xSquare));
for i = 1:n5
    ySquarePoly5 = ySquarePoly5 + a5(i)*xSquare.^(i-1);
end

% Cubic spline for the 5 data points
ySquareSpline5 = spline(x5, y5, xSquare);

% Plot for 5 points
figure(1);
plot(x5, y5, 'o', 'MarkerFaceColor','b','DisplayName','Data Points'); hold on;
plot(xSquare, ySquarePoly5, 'r', 'LineWidth', 1.5, 'DisplayName','Vandermonde Polynomial');
title('Polynomial Interpolation with 5 Data Points');
xlabel('x');
ylabel('y');
legend('Location','best');
grid on;


figure(2);
plot(x5, y5, 'o', 'MarkerFaceColor','b','DisplayName','Data Points'); hold on;
plot(xSquare, ySquareSpline5, 'k', 'LineWidth', 1.5, 'DisplayName','Natural Cubic Spline');
title('Spline Interpolation with 5 Data Points');
xlabel('x');
ylabel('y');
legend('Location','best');
grid on;

figure(3);
plot(x5, y5, 'o', 'MarkerFaceColor','b','DisplayName','Data Points'); hold on;
plot(xSquare, ySquarePoly5, 'r', 'LineWidth', 1.5, 'DisplayName','Vandermonde Polynomial');
plot(xSquare, ySquareSpline5, 'k--', 'LineWidth', 1.5, 'DisplayName','Natural Cubic Spline');
title('Combined Interpolation with 5 Data Points');
xlabel('x');
ylabel('y');
legend('Location','best');
grid on;

print('CombinedResults5Point.pdf','-dpdf','-bestfit');


% Part 2: 10 Data Points
% Let's pick a set of 10 data points. We can use a known function, for example sin(x).
%x10 = linspace(0, 3*pi, 10)';
%y10 = sin(x10);  % You can modify this if you want to experiment

x10 = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]';
y10 = [1, 2.1, 1.8, 3.2, 2.7, 3.5, 3.1, 4.2, 3.6, 4.5]';  % Example data points


% Construct Vandermonde matrix for 10 data points
n10 = length(x10);
V10 = ones(n10);
for i = 2:n10
    V10(:,i) = x10.^(i-1);
end

% Solve for polynomial coefficients
a10 = V10\y10;

% Evaluation points
xCubed = linspace(min(x10), max(x10), 300)';
% Polynomial evaluation
yCubedPoly10 = zeros(size(xCubed));
for i = 1:n10
    yCubedPoly10 = yCubedPoly10 + a10(i)*xCubed.^(i-1);
end

% Cubic spline for 10 data points
yCubedSpline10 = spline(x10, y10, xCubed);

% Plot for 10 points
figure(4);
plot(x10, y10, 'o', 'MarkerFaceColor','b','DisplayName','Data Points'); hold on;
plot(xCubed, yCubedPoly10, 'r', 'LineWidth', 1.5, 'DisplayName','Vandermonde Polynomial');
title('Polynomial Interpolation with 10 Data Points');
xlabel('x');
ylabel('y');
legend('Location','southeast');
grid on;



figure(5);
plot(x10, y10, 'o', 'MarkerFaceColor','b','DisplayName','Data Points'); hold on;
plot(xCubed, yCubedSpline10, 'k', 'LineWidth', 1.5, 'DisplayName','Natural Cubic Spline');
title('Spline Interpolation with 10 Data Points');
xlabel('x');
ylabel('y');
legend('Location','southeast');
grid on;



figure(6);
plot(x10, y10, 'o', 'MarkerFaceColor','b','DisplayName','Data Points'); hold on;
plot(xCubed, yCubedPoly10, 'r', 'LineWidth', 1.5, 'DisplayName','Vandermonde Polynomial');
plot(xCubed, yCubedSpline10, 'k--', 'LineWidth', 1.5, 'DisplayName','Natural Cubic Spline');
title('Combined Interpolation with 10 Data Points');
xlabel('x');
ylabel('y');
legend('Location','southeast');
grid on;


