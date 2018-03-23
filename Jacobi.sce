function [y] = jacobi(A, xo, b, episilon)
    n = length(b);
    xk1 = zeros(n, 1);
    while(norm((A*xo-b) > episilon)
        soma = 0;
        for i = 1:n
            for j = 1:n
                soma = soma + A(i,j) * xo(j);
            end
            xk1(i) = (1/A(i,i)) * (b(i) - soma);
        end
        xo = xk1;
    end
    y = xo;
endfunction
