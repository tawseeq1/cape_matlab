
Ly = 0.1
P = 5000
mu = 0.001

y = linspace (-Ly/2, Ly/2, 180);
u = (P / (2 * mu)) * (y.^2 - (Ly.^2 / 4))

figure;
plot (y, u, 'b', 'LineWidth', 3);
xlabel('Velocity in m/s');
ylabel('Position of y in meters');
title('Velocity profile for Poiseuille Flow');
grid on;
saveas (gcf, 'prob5_1.png');

[X, Y] = meshgrid(linspace(0, 1, 50), linspace(-Ly/2, Ly/2, 180));
V_grid = (P / (2 * mu)) * (Y.^2 - (Ly.^2 / 4));

figure;
contourf(X, Y, V_grid, 20, 'LineColor', 'none');
colorbar;
ylabel('Position of x in meters');
xlabel('Position of y in meters');
title('Velocity profile (contourf) for Poiseuille Flow');
saveas (gcf, 'prob5_2.png');
