function g_m = fourier_approximation(f, m, n)
    g_m = @(x) 0;
    for j = -m : m
        g_m = @(x) g_m(x) + fourier_coefficient(f, j, n) * exp(1i * j * x);
    end
end
