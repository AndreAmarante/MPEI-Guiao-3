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
A fun��o pode representar a fun��o de probabilidade de uma vari�vel
aleat�ria com valores 1, 2, 3 e 4, pois a soma das probabilidades d� 1.