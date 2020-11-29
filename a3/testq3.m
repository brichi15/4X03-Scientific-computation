a = 0;
b = 1;
f = @(x) 2/(sqrt(pi))*exp(-x.^2);

[c,p] = findconstants(@midpoint,f,a,b);

n = 1;
err = 1;

while abs(err) > 10^(-10)
    
    h = (b-a)/n;
    err = c*(h^p);      %%Q-erf(1) = error
    n = n+1;
end    





n

err