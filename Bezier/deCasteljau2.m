#
# u - scalar
# P - (n, m, 3) is an (n X m) matrix of 3D-points
#
function S = deCasteljau2(u0, v0, P)
  if nargin < 3
    error("usage: deCasteljau2(u0, v0, P)");
  endif

  n = size(P, 1);
  m = size(P, 2);
  
  if (n < m)
    Q = zeros(m, 3);
    for j = 1:m
      Q(j,:) = deCasteljau1(u0, squeeze(P(j,:,:)));
    endfor
    S = deCasteljau1(v0, Q);
  else
    Q = zeros(n, 3);
    for i = 1:n
      Q(i, :) = deCasteljau1(v0, squeeze(P(:,i,:)));
    endfor
    S = deCasteljau1(u0, Q);
  endif
endfunction
