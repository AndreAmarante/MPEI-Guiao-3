%Clear
clear all;
close all;
clc;

a=1; % 1 erro por p�gina
k=0 % Calculamos prob de nao existir erros numa p�gina

PnenhumErro=Poisson(a,k);

ProbPeloMenos1erro= 1-PnenhumErro; %Prob de uma p�gina ter 1 ou mais erros ser� 1- Prob(nao ter erros)