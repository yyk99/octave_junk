## Copyright (C) 2017 y.kuznetsov
## 
## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} bezier (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: y.kuznetsov <y.kuznetsov@USWKS-008>
## Created: 2017-11-03

function B = bezierMk2 (u, varargin)
  if nargin < 2
    error("usage: bezier(t, points...)");
  endif
%  B = bezier_var(t, varargin);
  n = length(varargin);
  Q = zeros(n, 2);
  for i = 1:n
    Q(i,:) = varargin{i};
  endfor
  
  for k = 1:n-1
    for i = 1:n-k
      Q(i,:) = (1.0 - u)*Q(i,:) + u * Q(i+1,:);
    endfor
  endfor
  
  B = Q(1,:);
endfunction
