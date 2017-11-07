#
# u - scalar
# P - vector of points 3D
#
function B = deCasteljau1(u, P)
  if nargin < 2
    error("usage: bezier(t, points...)");
  endif

  n = size(P, 1);
  Q = P;
  
  for k = 1:n-1
    for i = 1:n-k
      Q(i,:) = (1.0 - u)*Q(i,:) + u * Q(i+1,:);
    endfor
  endfor
  
  B = Q(1,:);
endfunction
