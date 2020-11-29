function [Q] = midpoint(f,a,b,n)

    h = (b-a)/n;

    i = 1:n;    %% summation bounds
    fi = f(a+(i-0.5).*h); %%vectorized compute
    Q = h*sum(fi);      %%add


end