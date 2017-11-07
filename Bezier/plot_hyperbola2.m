%
% Exl.10 The lower branch Hyperbola, center at P = (0, 2/3)
%

n = 100;
X = zeros(1, n);
Y = zeros(1, n);

u0 = (1.0 - sqrt(3)) / 2.0;
u1 = (1.0 + sqrt(3)) / 2.0;

if(1)
  u0 = 0;
  u1 = 1;
endif

for i = 1:n+1
  u = u0 + (u1 - u0) / n * (i-1);

  d = 1 + 2*u - 2*u*u;
  X(i) = (2*u - 1) / d;
  Y(i) = 4*u*(1-u)/d;
endfor

plot(X, Y, '-', [0], [4.0/3.0], 'o');
