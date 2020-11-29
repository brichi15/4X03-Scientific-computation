function [t,y] = rungekutta(f,tint,y0,h)

    y0 = y0(:);        %%column vector
    m = length(y0);
    t = tint(1):h:tint(2);
    N = length(t)-1;
    y = zeros(m,N+1);
    y(:,1) = y0;

    for i = 1:N      %% account for i+1
        Y1 = feval(f, t(i),y(:,i)    );
        Y2 = feval(f, t(i)+.5*h, y(:,i)+.5*h*Y1);
        Y3 = feval(f, t(i)+.5*h, y(:,i)+.5*h*Y2);
        Y4 = feval(f, t(i)+h,    y(:,i)+h*Y3);
        
        y(:,i+1) = y(:,i)+(h/6)*(Y1+2*Y2+2*Y3+Y4);
        
    end    

end
