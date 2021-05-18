k = [1 4 -2 -14 -3 -18];
p = poly2sym(k);
disp(factor(p))
%%
syms x;
f = atan(1/(1-x));
limit(f,x,1,'right')
%%
syms x;
f = (sin(3*x)-cos(3*x))^2;
fd = diff(f);
simplify(fd)
%%
syms x;
f = sqrt(1-x^2)/x^2;
F = int(f)
%%
syms x n k;
f = symsum(1/(k^2),k,1,n);
limit(f,n,inf)
%%
syms x;
f = exp(x);
a = -1;
n = 3;
taylor(f, x, a,'Order',n)
%%
syms x;
y = exp(1/(1-x^2))/(1+x^2);
ezplot(y, -7,7)
%%
syms x;
f = sin(x)/(x^2+1);
func = matlabFunction(f);
xticks = -5:0.01:5;
y = func(xticks);
xmin = fminbnd(func, -5, 5);
plot(xticks, y)
hold on
plot(xmin, func(xmin), 'r*')
hold on
f = -f;
rfunc = matlabFunction(f);
y = rfunc(xticks);
xmax = fminbnd(rfunc, -5, 5);
plot(xmax, func(xmax), 'r*')
%%
syms u t;
x = t*cos(u)*cos(u);
y = t^2*cos(u)*sin(u);
z = t^3*sin(u);
xd = diff(x);
yd = diff(y);
zd = diff(z);
xdd = diff(x,2);
ydd = diff(y,2);
zdd = diff(z,2);
xddd = diff(x,3);
yddd = diff(y,3);
zddd = diff(z,3);
k = sqrt(det([xdd ydd; xd yd])^2 + det([ydd zdd; yd zd])^2 + det([zdd xdd; zd xd])^2)/sqrt(xd^2+yd^2+zd^2);
kk = (zddd*(xd*ydd - xdd*yd) + zdd*(xddd*yd - xd*yddd) + zd*(xdd*yddd - xddd*ydd))/((xd^2+yd^2+zd^2)*(xdd^2+ydd^2+zdd^2));
simplify(k)
simplify(kk)







