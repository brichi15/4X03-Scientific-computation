function [c,p] = findconstants(rule,f,a,b)
actual = integral(f,a,b);

n1 = 2^4;   %%use two points 
n2 = 2^10;

h1 = 1/n1;
h2 = 1/n2;

err1 = abs(rule(f,a,b,n1) - actual);%% get error
err2 = abs(rule(f,a,b,n2) - actual);


p = log(err2/err1)/log(h2/h1); %% slope is p

c = err2/(h2^p);       %%sub p in to find c

end