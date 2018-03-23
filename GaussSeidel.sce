function [x,e] = GaussSeidel(a,b,n,m) 
    x=zeros(n,1); 
    y=zeros(n,1);
    s=zeros(n,1); 
    d=zeros(n,1); 
    for k=1:1:m 
        for l=1:1:n 
            y(l)=x(l); 
        end 
        for i=1:1:n 
            s(i)=b(i); 
            for j=1:1:n 
                if i<>j then 
                    s(i)=s(i)-a(i,j)*x(j); 
                end 
            end 
            x(i)=s(i)/a(i,i); 
        end 
    end 
    for i=1:1:n 
        d(i)=x(i)-y(i); 
    end 
    e = max(abs(d))/max(abs(x)); 
endfunction
