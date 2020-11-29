function c = newtonint(x,y)
    
    n = length(x);
    c = zeros(1,n);
    
    c(1) = y(1);       %%initial c
    
    for i = 2:n
        
        terms = 0;
        p_prev = 1;
            for j = 1:i-1
                terms = terms + c(j)*p_prev;        %%subtracting value
                p_prev = p_prev*(x(i) - x(j));      %%deviding value
            end
        
        c(i) = (y(i) - terms)/p_prev;               %%isolate
    end    
    
end