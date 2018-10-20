%Clear
clear all;
close all;
clc;

a=8; % Se 1 em 1000 est� defeituosa, em 8000, est�o 8;
k=7; %7 pe�as defeituosas
Pk= Poisson(8,7);

%Probabilidade Simulacao
N = 1e5;                  % N�mero de experi�ncias
n = 8000;                 % experiencias de bernoulli
p = 1/1000;
defeituosas = sum(rand(n, N) < p);
numSucessos = defeituosas == k;
probSimulacao= sum(numSucessos) / N;