%
%
%

n = 100;
X = zeros(1, n);
Y = zeros(1, n);

for i = 1:n
  t = 1.0 / n * (i-1);

  X(i) = (1.0 - t*t)/(1 + t*t);
  Y(i) = 2.0*t/(1+t*t);
endfor

plot(X, Y);
