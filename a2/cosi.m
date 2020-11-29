function [x,c] = cosi(a,b,tol)

    n = 1;        %initial number of points
    err = inf;
    
    while abs(err) > tol
      
        n = n+1;
        h = (b-a)/(n);
        err = (1/(4*(n+1)))*h^(n+1);
        
    end    
    
    x = linspace(a,b,n+1);
    y = cos(x);
    c = newtonint(x,y); 
    
end