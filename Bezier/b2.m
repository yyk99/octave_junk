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
## @deftypefn {} {@var{retval} =} b2 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: y.kuznetsov <y.kuznetsov@USWKS-008>
## Created: 2017-11-02

function [B] = b2 (t, P0, P1)
  B = (1-t)*P0 + t*P1;
endfunction
