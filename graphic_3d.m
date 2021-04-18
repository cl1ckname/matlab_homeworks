a=1;
b=2;
c=3;
d=4;
x = linspace(-5,5,100);
y = linspace(-5,5,100);
[X,Y] = meshgrid(x,y);
Z = (a*X + b*Y + d)/c;
surf(X,Y,Z)
%%
a = 1;
x = linspace(-5,5,100);
y = linspace(-5,5,100);
[X,Y] = meshgrid(x,y);
Z = a*sin(X.^2+Y.^2)./sqrt(X.^2+Y.^2);
mesh(X,Y,Z)
%%
a=1;
[X, Y] = meshgrid(-10:0.2:10, -10:0.2:10);
Z = a*X.*exp(-X.*X-Y.*Y);
surfc(X,Y,Z)
%%
a = 1;
[u,v] = meshgrid(-10:0.2:10, -10:0.2:10);
x = a*sinh(u).*cos(v);
y = a*sinh(u).*sin(v);
z = -cosh(u);
mesh(x,y,z)
hold on
x1 = a*sinh(u).*cos(v);
y1 = a*sinh(u).*sin(v);
z1 = cosh(u);
mesh(x1, y1, z1)
%%
a = 9;
b = 16;
[u,v] = meshgrid(0:0.1:2*pi, -pi/2:0.1:pi/2);
x = a*cos(u).*cos(v);
y = a*sin(u).*cos(v);
z = b*sin(v);
mesh(x,y,z)
%%
[u,v] = meshgrid(0:0.1:2*pi, -1/2:0.1:1/2);
x = (1+v.*cos(0.5*u)).*cos(u);
y = (1+v.*cos(0.5.*u)).*sin(u);
z = v.*sin(0.5.*u);
mesh(x,y,z)
%%







