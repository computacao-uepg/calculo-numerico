function [y] = cramer(A, b)
    //A = Matriz
    //b = Vetor solução
    //x = incognitas
    
    u = det(A);
    disp(u);
    for i = 1: length(b)
        Ai = A;
        for j = 1: length(b)
            Ai(j,i) = b(j); 
        end
        y(i) = det(Ai)/u;
    end
    //return y;
endfunction

function [y,x] = triangSup(A, b)
    y = A;
    x = b;
    n = length(b);
    for i = 1: n-1
       for j = i+1 : n
           x(j) = x(j) - (y(j,i)/y(i,i)) * x(i);
           for k = n : -1 : i
               y(j,k) = y(j,k) - (y(j,i)/y(i,i)) * y(i,k);
           end
       end 
    end
endfunction

function [y] = sisTriang(A, b)
    n = length(b);
    for i = n:-1:1
        soma = 0;
        for j = n: -1: i+1;
            disp(j);
            soma = soma + A(i,j) * y(j)
        end
        y(i) = (b(i) - soma)/A(i,i);
    end
endfunction


function [y] = gaussPivo(A,b)
    n = length(b);
    
    for i = 1: n-1
        L = i;
        for j = i:n
            if abs(A(j,i)) > abs(A(L,i))
                L = j;
            end
        end
        
        for k = 1 :n
            aux = A(i,k);
            A(i,k) = A(L,k);
            A(L,k) = aux;
            
            aux = b(i);
            b(i) = b(L);
            b(L) = aux;
        end
        
        for m = i+1:n
            b(m) = b(m) - (A(m,i)/A(i,i)) * b(i);
            
            for o = n:-1:i
                A(m,o) = A(m,o) - (A(m,i)/A(i,i)) * A(i,o);
            end
        end
    end
    disp(A);
    for i = n:-1:1
        soma = 0;
        for j = n:-1:i+1
            soma = soma + A(i,j) * y(j);
        end
        
        y(i) = (b(i) - soma)/A(i,i);
    end
endfunction

function[L,U] = decomp(A,n)
    for i = 1: n
        for j = 1 : n
            U(i,j) = 0;
            if i == j
                U(i,j) = 1;
            end
        end
    end
    
    for i = 1 : n-1
        for j = i + 1:n
            U(j,i) = A(j,i)/A(i,i);
            for k = n:-1:1
                A(j,k) = A(j,k) - (A(j,i)/A(i,i))*A(i,k);
            end
        end
    end
    L = A;
endfunction

function [x] = GaussSeidel(A,b,e)
    
endfunction





















