function x = backward(A,b,l)

    s = size(A);
    s = s(1);

    for k = 1:s-1
        for i = k+1:s
            ni = l(i);
            nk = l(k);
            b(ni) = b(ni) - A(ni,k)*b(nk);
        end    
    end
    
    ns = l(s);
    x(s) = b(ns)/A(ns,s);
    
    for i = s-1:-1:1
        ni = l(i);
        sum = b(ni);
        for j = i+1:s
            sum = sum - A(ni,j)*x(j);
        end    
        x(i) = sum/A(ni,i);
    end    
end

