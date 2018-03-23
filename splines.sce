function [y] = Splines(a,b,n,t)
    h = (b-a)/n;
    inicio = a;
    fim = a+h;
    i = 0;
    y = 0;
    if(t < a || t > b) then
        mprintf('Erro. Ponto fora do intervalo.');
        i = 1;
    end
    while (i == 0)
        if(t < fim) then
            x = [inicio;t;fim];
            y = lagrange(x,t);
            i = 1;
        else
            inicio = fim;
            fim = fim + h;
        end
    end
endfunction

function[y] = lagrange(x,t)
    n = length(x);
    y = 0;
    for i = 1: n
        l(i) = 1;
        for j = 1: n
            if j ~= i then
                l(i) = l(i) * (t-x(j))/(x(i)-x(j));
            end
        end
        y = y + f(x(i))*l(i);
    end
endfunction

function [y] = f(x)
    y = sin(x) + cos(x);
endfunction
