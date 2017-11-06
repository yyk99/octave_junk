## Copyright (C) 2017 y.kuznetsov
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} plot_b6 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: y.kuznetsov <y.kuznetsov@USWKS-008>
## Created: 2017-11-06

function plot_b6 ()
  p0 = [10, 10];
  p1 = [0, 20];
  p2 = [30, 30];
  p3 = [50, 20];
  p4 = [40, 0];
  p5 = [20, 0];
  p6 = p0;
  
  
  n = 100;
  X = zeros(1, n);
  Y = zeros(1, n);

for i = 1:n
  t = 1.0 / n * (i-1);
  B = bezier(t, p0, p1, p2, p3, p4, p5, p6);
  X(i) = B(1);
  Y(i) = B(2);
endfor

plot(X, Y, '-', [p0(1), p1(1), p2(1), p3(1), p4(1), p5(1), p6(1)], ...
  [p0(2), p1(2), p2(2), p3(2), p4(2), p5(2), p6(2)], '-');

endfunction
