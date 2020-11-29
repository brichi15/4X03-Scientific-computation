function [L U P] = gauss_p(A)
    s = size(A);
    s = s(1);
    U = A;
    A1 = A;
    L = zeros(s);
    
    scal = max(abs(U),[],2);       %make scale
    l = 1:1:s;                      %index array


    for i = 1:s-1
        check = abs(A1(:,i))./scal;
        [~,piv] = max(check());       %index to swap
        ind = find(l == piv);   
        A1(piv,:) = [0];               %% 0 row
        l([ind i]) = l([i ind]);    %swap

        
        for j = i+1:s %%%%%%%row reduce%%%%%%%%
            ni = l(i);
            nj = l(j);           %% use l as hash table
            a = -U(nj,i);
            b = U(ni,i);
            
            if a~=0 && b~=0
                fact = a/b;
                U(nj,:) = fact*U(ni,:) + U(nj,:);
                L(nj,i) = -fact;
            end
        end
    end
    P = zeros(s);
    cnt = 1;
    for i = l
        P(cnt,i) = 1;
        cnt = cnt + 1;
    end
    
    %%L = P+L;
    %%L = P*L;
    %%U = P*U;
    A = L +U;
end 


