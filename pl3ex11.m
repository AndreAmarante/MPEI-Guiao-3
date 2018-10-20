%Clear
clear all;
close all;
clc;

m=14;
desvioP=2;

%11.a)
N= 1e5; %numero de experiencias
X=2*randn(1,N)+14; % Distribuiçao da Variável aleatória X
resultados16 = X < 16;
resultados12 = X < 12;

sucessos16= sum(resultados16);
sucessos12= sum(resultados12);

pmenor16 = sum(sucessos16)/N;
pmenor12  = sum(sucessos12)/N;

Pentre12e16=pmenor16-pmenor12;

%11.b)
resultados18 = X < 18;
resultados10 = X < 10;

sucessos18= sum(resultados18);
sucessos10= sum(resultados10);

pmenor18 = sum(sucessos18)/N;
pmenor10  = sum(sucessos10)/N;

Pentre10e18=pmenor18-pmenor10;

%11.c)
resultadosmaior10 = X >= 10;
sucessos10= sum(resultadosmaior10);
pmaior10 = sum(sucessos10)/N;
