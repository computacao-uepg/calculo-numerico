function [polinomio] = vandermonde(vetX, pontosInterpolar)
    
    funcao = sin(vetX);
    
    n = length(vetX);
    m = length(pontosInterpolar);
    plot(vetX, funcao, 'ro-'), xgrid;
    
    for i=1:n
        for j=1:n
            vand(i,j) = vetX(i)^(j-1); 
        end
    end
    //o vetor A abaixo é os coeficientes do polinômio
    //a função inv calcula a inversa da matriz vand
    a = inv(vand)*funcao;

    //a variável p abaixo representa o polinômio
    //m é a quantidade de pontos para interpolar
    polinomio = 0;
    for k=1:n
        polinomio = polinomio+a(k)*pontosInterpolar.^(k-1);
    end
    plot(pontosInterpolar, polinomio, 'b.-');
       
endfunction
