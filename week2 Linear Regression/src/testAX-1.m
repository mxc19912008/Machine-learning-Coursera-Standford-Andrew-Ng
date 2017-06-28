function A_inv_b = matrixInverseVector(A, b, x_init, alpha)
  % Your code here
  nor = norm(A*x_init-b)
  cost = nor^2;
  while cost>10^-6,
    x_init = x_init -alpha*2*A*(A*x_init-b);
    nor = norm(A*x_init-b);
    cost = nor^2;
  end
endfunction