%
%
%
n = 100;
X = zeros(1, n);
Y = zeros(1, n);

P = zeros(3, 3);
P(1, 1:2) = P0;
P(2, 1:2) = P2;
P(3, 1:2) = P1;
disp(P);
  
for i = 1:n
  t = 1.0 / n * (i-1);
  
  B = deCasteljau1(t, P);
  X(i) = B(1);
  Y(i) = B(2);
endfor

plot(X, Y, '-', [P0(1), P2(1), P1(1)], [P0(2), P2(2), P1(2)], '-');

  