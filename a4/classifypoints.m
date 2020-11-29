function category = classifypoints(file,points)
    
    load(file); %%load all variables
    category = zeros(1,length(points)); %% initialize return var
    
    
    for i = 1:length(points)
        x = points(:,i);                %%from netbp
        a2 = activate(x,W2,b2);            
        a3 = activate(a2,W3,b3);
        output_vec = activate(a3,W4,b4);       %%past through sigmoid activate function layer times
        
        
        if output_vec(1,1) >= output_vec(2,1)
            category(i) = 1;
        end    
    end    

end