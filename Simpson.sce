
function y=simpson(f,a,b,n)
//Metodo de Simpson
//f é a função
//a e b são os intervalos de integração
// n é o número de repetições
  h=(b-a)/(2*n);
  Soma=f(a)+f(b);
  for i=1:n-1
    Soma=Soma + 4*f(a+h*(2*i -1)) + 2*f(a+h*2*i);
  end;
  Soma=Soma+4*f(a+(2*n-1)*h);
  y=(h/3)*Soma;
endfunction
