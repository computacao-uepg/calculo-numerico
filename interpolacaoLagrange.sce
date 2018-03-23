//INTERPOLAÇÃO DE LAGRANGE

function [y] = lagrange(vetx, vetf, x)
    n = length(vetx) - 1;
    
    for (i=1:n+1)
        l(i) = 1;
        
        for (j=1:n+1)
            if (i~=j)
                l(i) = l(i)*(x-vetx(j))/(vetx(i)-vetx(j));
            end
        end
    end
    
    
    y = 0;
    for (i=1:n+1)
        y = y + vetf(i)*l(i);
    end
    
endfunction
