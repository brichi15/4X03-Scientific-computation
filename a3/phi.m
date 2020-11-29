function f = phi(xhat,yhat)
%%%%%%%%%%%%% parameters %%%%%%%%%%%%
a = -1;
b = 1;
tol = 0.00001;
level = 0;
max = 100;

%%%%%%%%%% function %%%%%%%%%%%%%%%%%                
fun = @(x,y) 1./sqrt((xhat-x).^2 + (yhat-y).^2);

inner_integral = @(y) adsimpson(@(x) fun(x,y),a,b,tol,level,max); %% do innerloop with respect to x, make function of y
f = adsimpson(inner_integral,a,b,tol,level,max); %% do with respect to y


end

