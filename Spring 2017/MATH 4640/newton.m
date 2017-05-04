% Newton's method for root finding
% x is initial guess
% M is maximum number of iterations
% r is the true root, if available
function root = newton(f, f_deriv, x, M, delta, epsilon, r)
    v = f(x);
    root = x;
    e_prev = abs(x - r);
    for k = 1 : M
        x_next = x - v / f_deriv(x);
        if nargin >= 7
            e = abs(x_next - r);
            printf('x_%d = %d, e_%d/e_%d.^2 = %d\n', k, x_next, k, k - 1, e / e_prev.^2);
            e_prev = e;
        end
        v = f(x_next);
        if abs(v) < epsilon || abs(x_next - x) < delta
            root = x_next;
            break;
        end
        x = x_next;
    end
end
