%%%%%% refrence
%%%%%% https://ece.uwaterloo.ca/~dwharder/NumericalAnalysis/05Interpolation/horner/

function p = horner(c,x,X)

    k = length(X);                %%k different values to test
    p = zeros(1,k);             %%init p 
    n =  length(x);
    
    for vals = 1:k
        
        
        val = c(end);
        for i = n-1:-1:1
            val = val*(X(vals) - x(i)) + c(i);          %%nested
    
        end    
            
        p(vals) = val;
        
    end    

end
