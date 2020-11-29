function main2()
    fprintf('n\t\tAb\t\t\t\tno piv\t\t\t\tpiv\t\t\tcond(A)\n');
    fprintf('-----------------------------------------------------------------\n');
    for s =  1:5
        A = rand(500);
        b = sum(A,2);   
        x = ones(500,1);

        A = gauss(A);
        l = 1:1:500;
        [Ap lp] = gauss_p(A); 
        
        xn = backward(A,b,l)';
        xp = backward(Ap,b,lp)';
        
        Ab = norm(A\b - x)/norm(x);
        err = norm(xn - x)/norm(x);
        errp = norm(xp - x)/norm(x);
        con = cond(A);
        
        fprintf('%d\t%e\t%e\t%e\t%e\n', 500,Ab,err,errp,con);
        
        
    end
end    