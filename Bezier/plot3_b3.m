##
function plot3_b3 ()
  P = zeros(2,4,3);
  P(1, :, :) = [0, 0, 0; 0, 0, 100; 100, 0, 100; 100, 0, 0];
  P(2, :, :) = [0, 200, 0; 0, 200, 100; 100, 200, 100; 100, 200, 0];
   
  %disp(P);
  
  n = 50;
  X = zeros(1, (n+1)*(n+1));
  Y = zeros(size(X));
  Z = zeros(size(X));

  tic;
  k = 0;
  for i = 1:n+1
    u = 1.0 / n * (i-1);
    for j = 1:n+1
      k = k + 1;
      v = 1.0 / n * (j-1);
      B = deCasteljau2(u, v, P);
      X(k) = B(1);
      Y(k) = B(2);
      Z(k) = B(3);
    endfor
  endfor
  toc;
  
  [xx, yy] = meshgrid(linspace(0,100,n+1), linspace(0,200,n+1));
  zz = griddata(X, Y, Z, xx, yy);
  
  %plot3(X, Y, Z, 'o');
  mesh(xx, yy, zz);
  xlabel ("X");
  ylabel ("Y");
  zlabel ("Z");
  title ("3-D plot");

  
endfunction
