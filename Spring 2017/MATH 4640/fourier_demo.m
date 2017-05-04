f = @(x) sin(3*x).^2;
%f = @(x) cos(2*x).^3 + cos(sqrt(2)*x);
n = 200;
m = 5;
fourier_coefficients = zeros(2 * m + 1);
for j = 1 : 2 * m + 1
    fourier_coefficients(j) = compute_fourier_coefficient(f, j - m - 1, n);
    %disp([num2str(j - m - 1), ' ', num2str(fourier_coefficients(j))]);
end
%g_m = fourier_approximation(f, m, n);
x_pts = [];
f_pts = [];
g_pts = [];
for x = 0 : 0.001 : 2 * pi
    g_m = 0;
    for j = -m : m
        g_m = g_m + fourier_coefficients(j + m + 1) * exp(1i * j * x);
    end
    x_pts = [x_pts, x];
    f_pts = [f_pts, f(x)];
    g_pts = [g_pts, g_m];
    %disp([num2str(x), ' ', num2str(f(x)), ' ', num2str(g_m)]);
    %disp([num2str(x), ' ', num2str(f(x)), ' ', num2str(g_m(x))]);
end
plot(x_pts, f_pts, x_pts, g_pts)
xlabel('x');
legend('y = f(x)', 'y = g_5(x)');