%
%
%

load points.mat5

n = 100;
X = zeros(1, n);
Y = zeros(1, n);

for i = 1:n
  t = 1.0 / n * (i-1);
  B = bezier(t, P0, P1, P2, P0);
  X(i) = B(1);
  Y(i) = B(2);
endfor

plot(X, Y, '-', [P0(1), P1(1), P2(1), P0(1)], [P0(2), P1(2), P2(2), P0(2)], '-');