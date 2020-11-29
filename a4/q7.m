n = 10000;
a = 0;
b = 17.1;
h = (b-a)/n;
y0 = [0.994;0;0;-2.001585106379082522420537862224];
f = @num7;
[t,y] = rungekutta(f,[a b],y0,h);

plot(y(1,:),y(3,:));
xlabel('u1');
ylabel('u2');
title('Orbit Plot, 20000 steps, 400054774');
