%Clear
clear all;
close all;
clc;

a=1; % 1 erro por página
k=0 % Calculamos prob de nao existir erros numa página

PnenhumErro=Poisson(a,k);

ProbPeloMenos1erro= 1-PnenhumErro; %Prob de uma página ter 1 ou mais erros será 1- Prob(nao ter erros)