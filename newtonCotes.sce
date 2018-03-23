function [X] = newtonCotes(a, b, f n)
    //Esta função calcula a integração numérica de f(x)dx,
    //sobre os limites a e b usando a integração de newton cotes de grau n
    
    if((n<1) | (n>7)) then
            disp(n, "n=  ");
            error('n deve ser um inteiro entre 1 e 7');
            abort;
     end;
     
     kappa = [1/2, 1/6, 1/8, 1/90, 1/288, 1/840, 1/17280];
     beta = [[1 1 0 0 0 0 0 0];
             [1 4 1 0 0 0 0 0];
             [1 3 3 1 0 0 0 0];
             [7 32 12 32 7 0 0 0];
             [19 75 50 50 75 19 0 0];
             [41 216 27 272 27 216 41 0];
             [751 3577 1323 2989 2989 1323 3577 751]];
     h = (b-a)/n;
     x = zeros(n+1, 1);
     y = x;
     I = 0.0
     for j = 1:n+1
         x(j, 1) = a + (j-1)*h;
         y(j, 1) = f(x(j, 1));
         I = I + beta(n, j)*y(j,1);
     end;
     I = n*kappa(n)*h*I;
endfunction
