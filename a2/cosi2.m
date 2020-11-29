function [x, c] = cosi2(a,b,n)

x = zeros(1,n);                 %init x

    for i = 0:n-1
                        %%chebychev spacing
       x(i+1) = 0.5*(a+b) + 0.5*(b-a)*cos((2*i+1)*pi/(2*n+2));
    end
    
    y = cos(x);
    c = newtonint(x,y);

end