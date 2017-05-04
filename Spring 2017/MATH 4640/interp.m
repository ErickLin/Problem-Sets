function p = interp(x, f, n, t)
d = divdif(x, f, n);
p = d(n + 1);
for i = n : -1 : 1
    p = d(i) + (t - x(i)) * p;
end
end