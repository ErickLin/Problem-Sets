f = @(x) exp(-x.^2);
g = @(x) 1/(2 + cos(x));
disp(composite_trapezoid(f, 0, 1, 128));
disp(composite_trapezoid(f, 0, 1, 256));
disp(composite_trapezoid(f, 0, 1, 512));
disp(composite_trapezoid(g, 0, 2 * pi, 128));
disp(composite_trapezoid(g, 0, 2 * pi, 256));
disp(composite_trapezoid(g, 0, 2 * pi, 512));
