function root = bisection(f,a,b)

    if f(a)*f(b)<0 %%guess is proper
        mid = (a+b)/2;
        if abs(f(mid)) < 1e-9  %% close to 0 with error tolerance  
            root = mid;
        elseif f(a)*f(mid)<0 %%root in a-mid interval
            root = bisection(a,mid,f);
         
        else            %% root in mid-b interval
            root = bisection(mid,b,f);
        end    
        
    else
        disp('cannot compute with this guess')
 
    end    
end
