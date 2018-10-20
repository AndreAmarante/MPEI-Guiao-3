function [Pk] = Poisson(a,k)
  Pk= ((a^k)/factorial(k))* exp(-a);
endfunction
