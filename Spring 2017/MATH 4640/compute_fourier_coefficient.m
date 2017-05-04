function fhat_n = compute_fourier_coefficient(f, j, n)
    fhat_n = 0;
    for k = 0 : n - 1
        x_k = 2 * pi * k / n;
        fhat_n = fhat_n + f(x_k) * exp(-1i * j * x_k);
    end
    fhat_n = fhat_n / n;
end
