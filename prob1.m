L = 1;
Nx = 100;
Umax = 2;

x = linspace (0, L, Nx);
u = Umax * x /L;

figure;
plot (x, u, 'b-', 'LineWidth', 1);
grid on;
title ('1D Fluid Flow');
xlabel ('Position of x in meters')
ylabel ('Velocity in m/s')

xlim ([0 L]);
ylim ([0 Umax]);
legend ('u(x)', 'Location', 'NorthWest');
saveas (gcf, 'prob1.png');
