function y=f(x)
    
    /*Esta função será a função que usamos para calcular a
    integral através da quadratura gaussiana.*/
   
    y = ((2*x)+(3/x))^2;
endfunction

function [S] = gaussiana(a, b , n)
    
    h = (b-a)/n; //N intervalos
    x = linspace(a, b, n+1);
    
    w1 = 5/9;   t1= -sqrt(3/5);
    w2 = 8/9;   t2 = 0;
    w3 = w1;    t3 = -t1;
    
    S = 0;
    
    for i=1:n
        alpha = (x(i+1) - x(i))/2;
        betA = (x(i+1) + x(i))/2;
        x1 = alpha*t1+betA;
        x2 = alpha*t2+betA;
        x3 = alpha*t3+betA;
        
        A = (w1*f(x1)+w2*f(x2)+w3*f(x3))* h/2;
        S = S + A;
    
    end
    
endfunction
