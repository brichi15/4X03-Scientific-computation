function dydt = df(t,y)
dydt = [10*(y(2) - y(1));28*y(1) - y(2) - y(1)*y(3);y(1)*y(2)- (8/3)*y(3)];
end