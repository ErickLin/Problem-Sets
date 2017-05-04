function plot_6b(L, n)
    x = zeros(L, 1);
    f = zeros(L, 1);
    y = zeros(L, 1);
    for t = 1 : L
        x(t) = t;
        f(t) = 0;
        y(t) = 0;
        for i = 1 : n
            a_i = (2 / (i * pi)) * (cos(i * pi / 4) - cos(3 * i * pi / 4));
            c_i = a_i / (2 - (i * pi / L)^2);
            f(t) = f(t) + a_i * sin(i * pi * t / L);
            y(t) = y(t) + c_i * sin(i * pi * t / L);
        end
    end
    scatter(x, f);
    hold on;
    scatter(x, y);
end

