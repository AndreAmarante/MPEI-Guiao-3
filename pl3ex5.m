%Clear
clear all;
close all;
clc;

prob2despenhar=zeros(1,10);
prob4despenhar=zeros(1,10);

i=1;

% Criaçao de 2 arrays que guardam as probabilidades de despenhar, em funçao de p que vai de 0 a 1,
% com incremento de 0,1. 
for p=0:0.1:1.0 %probmotorfalhar

prob2despenhar(i)=combinacoes(2,2)*p^2; % cai se ambos motores falharem
prob4despenhar(i)=combinacoes(4,3)*p^3*(1-p)^1 + combinacoes(4,4)*p^4; % cai se 3 ou 4 motores falharem
i++;

endfor

#{
a) A partir de 0.4, a probabilidade do avião com 4 motores
se despenhar já é maior do que a do de 2 motores.

No entanto, na realidade, o valor real da probabilidade dum motor de avião
falhar deve ser mais pequena que 0.4, pelo que é mais seguro viajar num avião
com 4 motores.
