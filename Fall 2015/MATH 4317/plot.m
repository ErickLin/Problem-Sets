x = zeros(1001, 1);
F = zeros(1001, 1);
for i = 0 : 1000
    x(i + 1, 1) = i;
    a = i / 1000;
    val = a;
    for j = 1 : 1000
        val = val + 0.9 * sin(val) + a;
    end
    F(i + 1, 1) = val / 10000;
end
scatter(x, F);