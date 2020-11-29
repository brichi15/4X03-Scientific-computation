function [Q] = trapezoid(f,a,b,n)
    
    h = (b-a)/n;
    i = 1:n-1; 
    ti = a+ i.*h;       %%make ti
    Q = (h/2)*(f(a) + f(b)) + h*sum(f(ti)); %%sum and eq 

end