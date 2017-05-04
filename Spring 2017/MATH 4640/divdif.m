function d = divdif(x, f, n)
    d = zeros(n + 1);
    for i = 1 : n + 1
        d(i) = f(i);
    end
    for i = 2 : n + 1
        for j = (n + 1) : -1 : i
            d(j) = (d(j) - d(j - 1)) / (x(j) - x(j - 1));
        end
    end
end

