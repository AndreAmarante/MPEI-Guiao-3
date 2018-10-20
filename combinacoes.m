function [c] = combinacoes(n,k)
  c=factorial(n)/(factorial(k)*factorial(n-k));
endfunction
