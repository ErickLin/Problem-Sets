function [v, lambda] = power_method(A, v_0, max_iter)
    v = v_0;
    for i = 1 : max_iter
        w = A * v;
        v = w / norm(w);
        lambda = v' * A * v;
    end
endfunction