function root = newtons(f,x0)
                         %%using syms package
                         
    %---------------initialize--------%  
    df = matlabFunction(diff(sym(f))) ;     %%compute derivative
    y0 = f(x0);
    
    root = lineRoot(x0,y0,df);  %%calculate root of line
    yRoot = f(root);       %%value at root
    
    
    %-------------loop---------%
    while abs(yRoot) > 1e-9   %%while not precise enough
        x0 = root;        %update x0
        y0 = f(x0);
        root = lineRoot(x0,y0,df); 
        yRoot = f(root);
        
    end    
    
    %%--------------------functions---------------%%
    function root = lineRoot(x0,y0,df)   %%computes next root
        slope =  df(x0);           
        root = x0 - y0/slope;
    end    

end