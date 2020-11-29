function [Q] = simpson(f,a,b,n)
    h = (b-a)/n;
    i = 1:n/2;
    i1 = 1:n/2 -1;
    t2i = a+ (2.*i1).*h;
    t2iMinus1 = a+(2.*i -1).*h;
    
    Q = (h/3)*(f(a) + 2*sum(f(t2i)) + 4*sum(f(t2iMinus1)) + f(b));

end