%Clear
clear all;
close all;
clc;

a=8; % Se 1 em 1000 está defeituosa, em 8000, estão 8;
k=7; %7 peças defeituosas
Pk= Poisson(8,7);

%Probabilidade Simulacao
N = 1e5;                  % Número de experiências
n = 8000;                 % experiencias de bernoulli
p = 1/1000;
defeituosas = sum(rand(n, N) < p);
numSucessos = defeituosas == k;
probSimulacao= sum(numSucessos) / N;