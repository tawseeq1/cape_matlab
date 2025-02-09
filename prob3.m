
Lx = 1
Ly = 1
Nx = 50
Ny = 50

x = linspace (0, Lx, Nx);
y = linspace (0, Ly, Ny);
[X, Y] = meshgrid(x, y);
U = X;
V = Y;
v_mag = sqrt(U.^2 + V.^2);
figure;
contourf(X, Y, v_mag, 20);
colorbar;
title ('1D Fluid Flow');
xlabel ('Position of x in meters')
ylabel ('Velocity in m/s')
axis equal
saveas (gcf, 'prob3.png');
