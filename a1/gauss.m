function [L U] = gauss(A)
    s = size(A);
    s = s(1);
    U = A;
    L = eye(s);
    for i = 1:s-1
        
        for j = i+1:s
            a = -U(j,i);        
            b = U(i,i);
            if a~=0 && b~=0
                fact = a/b;         %% multiplication factor
                U(j,:) = fact*U(i,:) + U(j,:);
                L(j,i) = -fact;
            end
        end
    end
    A = L - eye(s) +U;
end 