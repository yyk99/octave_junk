%
%
%
n = 100;
X = zeros(1, n);
Y = zeros(1, n);

for i = 1:n
  t = 1.0 / n * (i-1);
  B = b3(t, P0, P2, P1);
  X(i) = B(1);
  Y(i) = B(2);
endfor

plot(X, Y);

  