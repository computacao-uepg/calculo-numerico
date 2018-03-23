function [Y] = GaussPivo(A,n)
        
    [l,c]=size(A);
        if (l<n)|(c<n) 
            then 
            Y=A; 
        end
    M = n;
    for k=n+1:l,
        if abs(A(k,n))>=abs(A(M,n)) 
            then M=k; 
        end;
    end;
    if M ~= n 
        then
            b=A(n,:);
            A(n,:)=A(M,:);
            A(M,:)=b;
    end;
    Y=A;
endfunction
