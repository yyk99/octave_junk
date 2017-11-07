%
% Exl.10 Hyperbola, center at P = (0, 4/3); the y-axis is the transverse axis
% Les Piegl;Wayne Tiller. The NURBS Book
%

n = 100;
X = zeros(1, n);
Y = zeros(1, n);

for i = 1:n+1
  u = 1.0 / n * (i-1);

  d = 1 + 2*u - 2*u*u;
  X(i) = (2*u - 1) / d;
  Y(i) = 4*u*(1-u)/d;
endfor

plot(X, Y);
