
function plot3_b3 ()
  P = zeros(2,4,3);
  P(1, :, :) = [0, 0, 0; 0, 100, 0; 100, 100, 0; 100, 0, 0];
  P(2, :, :) = [0, 0, 200; 0, 100, 200; 100, 100, 200; 100, 0, 200];
   
  disp(P);
  
  n = 50;
  X = zeros(1, n*n);
  Y = zeros(1, n*n);
  Z = zeros(1, n*n);

  tic;
  k = 0;
  for i = 1:n
    u = 1.0 / n * (i-1);
    for j = 1:n
      k = k + 1;
      v = 1.0 / n * (j-1);
      B = deCasteljau2(u, v, P);
      X(k) = B(1);
      Y(k) = B(2);
      Z(k) = B(3);
    endfor
  endfor
  toc;
  
  plot3(X, Y, Z);

endfunction
