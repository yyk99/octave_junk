## Copyright (C) 2017 yyk
## 

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} plot_bezier_basic (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: yyk <yyk@PLEIN>
## Created: 2017-11-08

function plot_bezier_basic (n, i)
  if nargin < 1
    error('Too few parameters');
  endif
  if nargin == 2
    U = linspace(0, 1, 51);
    Y = zeros(1, 51);
    for k = 1:length(U)
      Y(k) = bernshtein(i, n, U(k));
    endfor
  
    plot(U, Y);
  else
    hold
    for i = 0:n
      plot_bezier_basic (n, i);
    endfor
    hold
  endif
endfunction

##
## 
##
function b = bernshtein(i, n, u)
  temp = zeros(1, n + 1);
  temp(n-i+1) = 1;
  
  u1 = 1.0 - u;
  for k = 2:n+1
    for j = n+1:-1:k
      temp(j) = u1*temp(j) + u*temp(j-1);
    endfor
  endfor
  b = temp(n+1);
endfunction
