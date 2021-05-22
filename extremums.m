%1 a
f = @(x)exp(-0.1.*x.^2).*cos(x.^2);
xx = 0:0.1:2*pi;
yy = f(xx);
plot(xx,yy)
hold on
grid on
x = fminbnd(f,0,2)
plot(x,f(x),"r*")
%%
%1 b
a1 = 1;
b1 = 2;
f = @(x)1./(2*cos(x)+sin(x)).^2;
xx = 0:0.1:2*pi/3;
yy = f(xx);
plot(xx,yy)
hold on
grid on
xlim([0,2*pi/3]);
ylim([0,1]);
x = fminbnd(f,0,2*pi/3)
plot(x,f(x),"r*")
%%
%1 c
f = @(x)2-abs(x).*exp(-abs(x-1));
xx = 0:0.1:4;
yy = f(xx);
plot(xx,yy)
hold on
grid on
xlim([0,4]);
ylim([0,2]);
x = fminbnd(f,0,4)
plot(x,f(x),"r*")
%%
%2 b
xx = -1:0.1:7;
xlim([-1,7]);
ylim([0,3]);
for a = [-0.1, -0.2, -0.4]
    for b = [-0.1,-0.2,-0.4]
        f = @(x)x.^a.*exp(-b*x);
        yy = f(xx);
        plot(xx,yy)
        hold on
        x = fminbnd(f,1,7)
        plot(x,f(x),"r*")
        hold on
    end
end
grid on

