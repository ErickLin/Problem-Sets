function [Q, R] = householder(A)
m = size(A, 1);
n = size(A, 2);
if m - 1 > n
    return;
end
H = zeros(m, m, m - 1);
Q = eye(m);
R = A;
for k = 1 : m - 1
    I = eye(m - k + 1);
    v = R(k:m, k) + norm(R(k:m, k)) * I(:, 1);
    u = v / norm(v);
    H(:, :, k) = eye(m);
    H(k:m, k:m, k) = I - 2 * u * transpose(u);
    Q = Q * H(:, :, k);
    R = H(:, :, k) * R;
end
disp(Q);
disp(R);
disp(Q * R);