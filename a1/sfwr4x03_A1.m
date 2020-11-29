
%%%%%%%% Q2 %%%%%%%%%%%%%%%%%%%%%%%%%

x = [4];
xnew = [4];

for n = 1:50
    %%part1
    xval = x(n);
    xnplus1 = 2^(n)*(sqrt(1+(2^(-(n-1)))*xval)-1);
    x = [x,xnplus1];
    
    %%part2
    xvnew = xnew(n);
    xnplus1new = 2^(n)*(2^(-(n-1))*xvnew)/(sqrt(1+2^(-(n-1))*xvnew)+1);
    xnew = [xnew,xnplus1new];
    
end

error1 = abs(log(x(1)+1) - x(51))

error2 = abs(log(xnew(1)+1) - xnew(51))


%%%%%%%%%%%%%%%% Q3%%%%%%%%%%%%%%%

a = eps;
diff = 0;
while diff <= 10^-15
    diff = abs(sin(a) -a);
    a = a + eps*10000;
end

a = a-eps*10000;
while diff <=10^-15
    diff = abs(sin(a) -a);
    a = a+eps;
end

a

x = linspace (-a,a);
semilogy(x, abs( sin (x)-x), x, 1e-15*ones( length(x),1), '--' );
print ('-depsc2', 'sinx.eps');


%%%%%%%%%%%%%%% 4%%%%%%%%%%%%%%%%%%%%%

s = 1-3*(4/3-1);







