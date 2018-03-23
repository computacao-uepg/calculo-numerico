function [R] = Cholesky(A)
    [nl,nc] = size(A);
    [a11,at,â,Â] = criaMatriz(A,nl);
    if nl == 1 then
        R = sqrt(A);
    else
        r11 = sqrt(a11);
        r = (1/(r11))*â;
        Rzao = Cholesky(Â-r*r');
        
        R(1,1) = r11;
        R(1,2:nl) = r;
        R(2:nl,1) = zeros(nl-1,1);
        R(2:nl,2:nl) = Rzao;
    end
    
endfunction

function [a11,at,â,Â] = criaMatriz(A,nl)
    a11 = A(1,1);
    at = A(1,2:nl);
    â = A(2:nl,1);
    Â = A(2:nl, 2:nl); 
endfunction
