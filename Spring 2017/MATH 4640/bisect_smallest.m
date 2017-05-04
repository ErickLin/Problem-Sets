% Bisection algorithm for root finding
function root = bisect_smallest(f, a, b, epsilon)
    root = a + (b - a)/2;
    while b - root > epsilon
        fprintf('f(a) = %d, f(m) = %d\n', f(a), f(root));
        if sign(f(a)) * sign(f(root)) <= 0
            b = root;
        else
            a = root;
        end
        root = a + (b - a)/2;
        fprintf('a = %d, b = %d, root = %d\n', a, b, root);
    end
end
