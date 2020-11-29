%% add data
M = importdata('data.txt'); %%data

x = 1;
y = 2;
z = 3;

t = M(:,1);



coeff = zeros(5,5);


%% compute
 
for i = 1:5
    P = M(:,(3*i-1):(3*i+1));       %%planet xyz from matrix
    
    A= horzcat(P(:,y).^2 , P(:,x).*P(:,y) , P(:,x) , P(:,y) , ones(171207,1));
    B = P(:,x).^2;
    coeff(:,i) = A\B;       %%abcde stored as column
    
end    

disp('     Jup          Sat          Ura           Nep          Plu');
disp(coeff);

%% plot

spec = {'k--','k-','k:','k-.','k--'};

for i = 1:5     %%planets in order
        
    a = coeff(1,i);
    b = coeff(2,i);
    c = coeff(3,i);
    d = coeff(4,i);
    e = coeff(5,i);
    
    
    P = M(:,(3*i-1):(3*i+1));
    [xs, ys] = meshgrid(min(P(:,x)) -1:0.1:max(P(:,x))+1, min(P(:,y)) -1:0.1:max(P(:,y))+1);
    contour(xs, ys, a*ys.^2+b*xs.*ys+c*xs+d*ys+e-xs.^2, [0, 0],spec{i},'LineWidth',2);
    hold on;
    %%500 at 17290
    plot(P(17290,x),P(17290,y),'.','MarkerSize',26,'MarkerEdgeColor','k','MarkerFaceColor','k');
    
end    
title('4b) Plot, 400054774');
xlabel('X');
ylabel('Y');

