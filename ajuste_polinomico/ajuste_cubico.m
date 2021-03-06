x = [426.69, 483.297, 497.805, 568.92, 995.61, 1422.3, 2133.45, 3555.75, 4266.9, 7111.5];
y = [2468, 2482, 2483, 2498, 2584, 2672, 2811, 3094, 3236, 3807];

plot(x,y,'or'), grid;
hold on

A = [(x.^3)', (x.^2)', (x.^1)', (x.^0)'];
Y = y';
X = inv(A' * A) * (A' * Y);

a = X(1)
b = X(2)
c = X(3)
d = X(4)

xx = min(x) : 5 : max(x);
yy = a*xx.^3 + b*xx.^2 + c*xx + d;

v = 85  33.801;
res = a*v^3 + b*v^2 + c*v + d;
fprintf('res = %.10f\n',res);
plot(v,res,'*r');

plot(xx,yy,'b');
hold off
