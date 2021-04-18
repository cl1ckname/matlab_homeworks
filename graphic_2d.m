x = linspace(-5,5,100);
y = x+1./(x.*x);
plot(x,y)
%% 
x = linspace(-5,5,100);
y = 2*x./(1+x.*x);
plot(x,y)
%% 
x = linspace(-5,5,100);
y = (x-2).*sqrt((1+x)./(1-x));
plot(x,y)
grid on
%%
x = linspace(-5,5,100);
y = log(x.*x-4);
plot(x,y)
grid on
%%
x = linspace(0,40,300);
y = sqrt(sin(pi.*sqrt(x)));
plot(x,y)
grid on
%%
x = linspace(0,40,300);
y = (x+abs(x)).*sqrt(x.*sin(pi.*x).^2);
plot(x,y)
grid on
%%
x = linspace(0,40,300);
y = x.*sin(pi.*x);
plot(x,y)
grid on
%%
a = 100;
b = 2;
n = 4;
k = 14;
m = 2;
theta = linspace(-4*pi, 4*pi, 200);
rho = a./(a+(theta-pi*2).^ n) .* (b - sin(k.*theta)-cos(m.*theta));
polarplot(theta,rho)
grid on
%%
a = 3;
b = 4;
n = 3;
m = 2;
theta = linspace(0, 4*m*pi, 200);
x = (1 + n/m)*cos(n/m*theta)-a*n/m*cos(1+n/m*theta);
y = (1+n/m)*sin(n/m*theta) - a*n/m*sin(1+n/m*theta);
plot(x,y)
grid on
%%
a = 1;
b = 2;
n = 4;
m = 2;
theta0 = pi/4;
theta = linspace(0, 2*m*pi, 200);
x = a*sin(n*theta + theta0);
y = b*sin(m*theta);
plot(x,y)
grid on
%%
t = linspace(-5,5,5000);
a = 1/2;
b = 1/3;
m = 7;
n = 17;
x = cos(t) + a*cos(m*t) + b*sin(n*t);
y = sin(t) + a*sin(m*t) + b*cos(n*t);
plot(x,y)
grid on
%%
%такс, а теперь именные
theta = linspace(-2*pi, 2*pi, 100);
r = 1 + cos(3*theta) + sin(3*theta).^2;
polarplot(theta, r)
title("лист щавеля")
grid on
%%

theta = linspace(-2*pi, 2*pi, 100);
r = 1;
a = 1;
x = 3*r*cos(theta) - r*cos(a+3*theta);
y = 3*r*sin(theta) - r*sin(a+3*theta);
plot(x,y)
title("нефроида")
grid on







