%Clear
clear all;
close all;
clc;

f=zeros(1,4);

for x=1:4
  f(x)=(x+5)/30;
endfor

Soma= sum(f);

#{
A função pode representar a função de probabilidade de uma variável
aleatória com valores 1, 2, 3 e 4, pois a soma das probabilidades dá 1.