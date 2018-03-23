function y = trapezio(f,a,b,n) 
//Método do trapézio
//f é a função
//a e b são os intervalos de integração
//n é o numero de repetições
  h=(b-a)/n;
  Soma = f(a) + f(b);
  for k=1:n-1 
    Soma=Soma + 2*f(a+k*h);
  end;
  y= (h/2)*Soma;
endfunction
