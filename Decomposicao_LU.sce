function [L, U] = fatoracaoLU(A)
    n = size(A, 1);
    L = eye(n, n);
    
    for j = 1:n-1
        for i = j+1:n   
            L(i, j) = A(i, j)/A(j, j);
            A(i, j+1:n) = A(i, j+1:n) - L(i, j) * A(j, j+1:n);
            /*Devido a erros de arredondamento, pode ser 
                que alguns elementos que deveriam ser zeros, 
                tenham valores diferentes. Como a matriz  A tem que ser 
                triangular superior, devemos garantir que o elemento A(i,j)
                que acabou de ser calculado seja realmente zero*/
             A(i, j) = 0;
        end 
    end
endfunction
