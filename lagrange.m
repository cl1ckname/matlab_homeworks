function P = lagrange(x,y)
    P = zeros(1,length(x));
    for i = 1:length(x)
        tp = [1];
        t = y(i);
        for j = 1:length(y)
            if i ~= j
                t = t./(x(i)-x(j));
                tp = conv(tp, [1,-x(j)]);
            end
        end
        tp = t * tp
        P = P + tp;
    end
end

