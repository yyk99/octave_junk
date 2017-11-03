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
## @deftypefn {} {@var{retval} =} b4 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: y.kuznetsov <y.kuznetsov@USWKS-008>
## Created: 2017-11-02

function [B] = b4 (t, P0, P1, P2, P3)
  B = (1-t)*b3(t, P0, P1, P2) + t*b3(t, P1, P2, P3);
endfunction
