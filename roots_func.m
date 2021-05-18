x = -3:0.01:3;
f = sin(exp(x));
xlim([-3,3]);
plot(x,f);
grid on
hold on
% z = ginput(1);
xx = fzero('sin(exp(x))', 1);
y = sin(exp(xx));
plot(xx, y, 'ro');
hold on
xx = fzero('sin(exp(x))', 2);
y = sin(exp(xx));
plot(xx, y, 'ro');
hold on
xx = fzero('sin(exp(x))', 2.2);
y = sin(exp(xx));
plot(xx, y, 'ro');
hold on
xx = fzero('sin(exp(x))', 2.5);
y = sin(exp(xx));
plot(xx, y, 'ro');
hold on
xx = fzero('sin(exp(x))', 2.7);
y = sin(exp(xx));
plot(xx, y, 'ro');
hold on
xx = fzero('sin(exp(x))', 3);
y = sin(exp(xx));
plot(xx, y, 'ro');
hold off
%%
syms x;
f = x^2+1==0;
xf = fzero('x^2+1',0)
xs = solve(f)
%%
syms x;
f = cos(x) - exp(0.0001-x^2);
xx = -5:0.01:5;
y = cos(xx) - exp(0.0001-xx.*xx);
plot(xx,y)
grid on
xlim([-5,5])
ylim([-5,5])
solve(f)
fzero('cos(x)-exp(0.0001-x^2)',0)








