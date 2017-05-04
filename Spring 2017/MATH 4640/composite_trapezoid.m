function res = composite_trapezoid(f, a, b, n)
    res = 0;
    l = 0;
    for k = 1 : 1 : n
        r = a + (b - a) * k/n;
        res = res + (b - a)/n * (f(l) + f(r)) / 2;
        l = r;
    end
end
