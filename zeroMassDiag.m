function [matrix] = zeroMassDiag(n,m)
%ZEROMASSDIAG Funny matrix
%   Its my homework, yearh
matrix = zeros(n*2,m*2);
matrix(n+1:end,1:m) = ones(n,m);
matrix(1:n, m+1:end) = ones(n,m);
end

