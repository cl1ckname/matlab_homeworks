P = [1,-3.55,5.1,-3.1];
x = -10:0.1:10;
y = polyval(P, x);
plot(x,y)
grid on
%%
P = [5, 0.1, 0.2, -0.2, -2, 1];
r = roots(P);
rmax = max(r);
x = -abs(rmax):0.001:abs(rmax);
y = polyval(P,x);
x1 = -0.5*abs(rmax);
y1 = polyval(P,x1);
xd  = polyder(P);
x2 = x1 + 1;
y2 = y1 + polyval(xd, x1);
x11 = 0.5*abs(rmax);
y11 = polyval(P,x11);
x12 = x11 + 1;
y12 = y11 + -polyval(polyder(P),x11);
nrm1 = sqrt((x11-x12)^2+(y11-y12)^2);
x12 = x12 / nrm1;
y12 = y12 / nrm1;
nrm = sqrt((x1-x2)^2+(y1-y2)^2);
x2 = x2/nrm;
y2 = y2/nrm;
axis equal
subplot(2,1,1);
grid on
xlim([-1.1,1.1])
ylim([-1.1,1.1])
plot(x,y)
hold on
plot([x1,x2],[y1,y2], 'r')
hold on
plot([x11,x12], [y11,y12], 'm')
subplot(2,1,2);
t = 0:0.01:pi*2;
rr = real(r(1));
u = rr*cos(t);
v = rr*sin(t);
plot(u,v)
for m = r
    hold on
    plot(real(m),imag(m),'*')
end
%%
P1 = [2,-3,4,-5,6];
P2 = [2,-3,1];
[q,v] = deconv(P1,P2);
fprintf("%f ",q)
fprintf("\n")
fprintf("%f ",v)
fprintf("\n")
%%
P = [2 -2  6 -10 16];
c = 4;
result = 1;
for a = P
    result = result * c;
    result = result + a;
end
fprintf("%d\n", result);
%%
n = 3;
P = [];
for i = 2*n:-1:0
    if i == 2*n
        P = [P 1];
    elseif i == n+1
        P = [P -n];
    elseif i == n-1
        P = [P n];
    elseif i == 0
        P = [P -1];
    else
        P = [P 0];
    end
end
r = roots(P);
dict = containers.Map(unique(real(r)),zeros(1,length(unique(real(r)))));

for i = 1:length(r)
    dict(real(r(i))) = dict(real(r(i))) + 1;
end
for i = unique(real(r)')
    if dict(i) > 1
        disp(i)
    end
end
%%
P1 = [1 0 0];
P2 = [1 4 1 -6];
[r, p, k] = residue(P1,P2);
for i = 1:length(r)
    if p(i)<0
        fprintf("%4.2f/(x%4.2f) ", r(i), p(i))
    else
        fprintf("%4.2f/(x+%4.2f) ", r(i), p(i))
    end
    if i ~= length(r)
        fprintf("+ ")
    elseif k ~= []
        fprintf("%4.2f\n", k);
    else
        fprintf("\n")
    end
end    
%%
%part 2
P1 = [1 3];
P2 = [1 -1 1 -1];
[r, p, k] = residue(P1,P2);
for i = 1:length(r)
    if p(i)<0
        fprintf("%4.2f/(x%4.2f) ", r(i), p(i))
    else
        fprintf("%4.2f/(x+%4.2f) ", r(i), p(i))
    end
    if i ~= length(r)
        fprintf("+ ")
    elseif k ~= []
        fprintf("%4.2f\n", k);
    else
        fprintf("\n")
    end
end    
%%
%part 3
P1 = [1 0 0];
P2 = [1 0 0 -1];
[r, p, k] = residue(P1,P2);
for i = 1:length(r)
    if p(i)<0
        fprintf("%4.2f/(x%4.2f) ", r(i), p(i))
    else
        fprintf("%4.2f/(x+%4.2f) ", r(i), p(i))
    end
    if i ~= length(r)
        fprintf("+ ")
    elseif k ~= []
        fprintf("%4.2f\n", k);
    else
        fprintf("\n")
    end
end
%%
n = 4;
x = 1:n;
y = ones(1,n)./x;
P = lagrange(x,y)
r = roots(P)
xx = x(1)-1:0.01:x(end)+1;
yy = polyval(P, xx);
plot(xx,yy)
for i = 1:length(x)
    hold on
    plot(x(i),y(i), "*")
end
grid on








