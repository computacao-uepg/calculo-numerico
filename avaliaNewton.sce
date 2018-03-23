function [y] = newton(coef, x, ponto)
    
    n = length(coef);
    
    y= coef(n-1)+coef(n)*((ponto-x(n-1)));
    
    for (i=(n-1):-1:2)
        y= coef(i-1)+(ponto - x(i-1))*y;
    end
    
endfunction
