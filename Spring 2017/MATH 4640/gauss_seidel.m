function x = gauss_seidel(A, b, epsilon, x_sol)
    n = size(A, 1);
    D = diag(diag(A));
    L = -tril(A, -1);
    U = -triu(A, 1);
    T = inv(D - L) * U;
    c = inv(D - L) * b;
    x = zeros(n, 1);
    if nargin >= 4
        e = norm(x - x_sol);
    end
    while norm(x - (T * x + c)) > epsilon
        x = T * x + c;
        if nargin >= 4
            e = [e norm(x - x_sol)];
        end
    end
    if nargin >= 4
        plot(e);
    end
end
