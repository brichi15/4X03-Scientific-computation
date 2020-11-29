function [x,fx,X,fX,p] = interp3 (a,b,n,f,method)
    X = linspace(a,b,100*n);
    fX = f(X);
 
    switch method
        case 'uniform'
            x = linspace(a,b,n);
            fx = f(x);
            c = newtonint(x,fx);
            p = horner(c,x,X);
        case 'spline'
            x = linspace(a,b,n);
            fx = f(x);
            p = spline(x,fx,X);
        case 'cheb'
            x = zeros(1,n);                 %init x
            for i = 0:n-1
                                %%chebychev spacing
               x(i+1) = 0.5*(a+b) + 0.5*(b-a)*cos((2*i+1)*pi/(2*n+2));
            end
            fx = f(x);
            c = newtonint(x,fx);
            p = horner(c,x,X);
    end    

end