%Clear
clear all;
close all;
clc;

a=15; %Lambda

%a)
k=0;
P0msgs=Poisson(a,k);

%b)
Prob=0; % Inicialização da probabilidade de receber entre 0 e 10 mensagens num segundo
for k=0:10
  Prob+= Poisson(a,k);
  ProbMais10= 1-Prob; % Prob receber mais 10 mensagens num segundo
endfor