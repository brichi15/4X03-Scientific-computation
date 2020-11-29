
f = @(x)exp(x)./x;
mid = zeros(7,1);
trap = zeros(7,1);
simp = zeros(7,1);
h = zeros(7,1);

actual = integral(f,1,2);

for i = 4:10
   n = 2^i;
   mid(i-3,:) = abs(midpoint(f,1,2,n)-actual);
   trap(i-3,:) = abs(trapezoid(f,1,2,n)-actual);
   simp(i-3,:) = abs(simpson(f,1,2,n)-actual);
   h(i-3,:) = 1/n;
   
end    

loglog(h,mid,'k--');
hold on;
loglog(h,trap,'k:o');
loglog(h,simp,'k:x');

legend('mid','trap','simp');
xlabel('h');
ylabel('error');
title('2 b) Plot, 400054774');
