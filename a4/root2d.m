function F = root2d(x)
    F(1) = exp(-x(1)) + exp(-x(2)) - 1.0001;
    F(2) = (10^6)*x(1)*x(2) -1;
    
end