function main()
    fprintf('n\t\tAb\t\t\t\tno piv\t\t\t\tpiv\t\t\tcond(A)\n');
    fprintf('-----------------------------------------------------------------\n');
    for s =  2:20
        H = hilb(s);
        b = sum(H,2);   
        x = ones(s,1);

        A = gauss(H);
        l = 1:1:s;
        [Ap lp] = gauss_p(H); 
        
        xn = backward(A,b,l)';
        xp = backward(Ap,b,lp)';
        
        Ab = norm(H\b - x)/norm(x);
        err = norm(xn - x)/norm(x);
        errp = norm(xp - x)/norm(x);
        con = cond(H);
        
        fprintf('%d\t%e\t%e\t%e\t%e\n', s,Ab,err,errp,con);
        
        
    end
end    