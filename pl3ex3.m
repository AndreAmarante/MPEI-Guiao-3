%Clear
clear all;
close all;
clc;

%3.a
%n� de coroas que poder�o sair
N= 1e5; %numero de experiencias
p=0.5; %Probabilidade de cada face
X= rand(4,N) < p; %Vari�vel aleat�ria com numero de coroas
Y=0:4;

%Probabilidades
resultados0 = sum(X) == 0;
resultados1 = sum(X) == 1;
resultados2 = sum(X) == 2;
resultados3 = sum(X) == 3;
resultados4 = sum(X) == 4;
p0= sum(resultados0)/N;
p1= sum(resultados1)/N;
p2= sum(resultados2)/N;
p3= sum(resultados3)/N;
p4= sum(resultados4)/N;

Px=[p0, p1, p2, p3, p4];
stem(Y,Px)
title('Fun��o de Probabilidade P_X(x)');
xlabel('N� coroas')
ylabel('P_X(coroa)')

%3.b
Ex= sum(Y.*Px); % Valor esperado
Z= power(Y,2); % Vetor com os valores de 0 a 4 ao quadrado
Ex2= sum(Z.*Px); % E[X^2]
Var= Ex2 - power(Ex,2); % Vari�ncia
DesvioP=sqrt(Var); % Desvio padr�o � a ra�z quadrada da vari�ncia

%3.c
 % O tipo de distribui��o da vari�vel aleat�ria X � a Binomial,
 % onde X � o n� de vezes que ocorre o acontecimento A em n experi�ncias.
 % A express�o te�rica da fun�ao de probabilidade ser� a lei binomial onde 
 % Px(k) = nCombina�oesk * p^k *(1-p)^(n-k)
 
%3.d 
%Aplica��o anal�tica da lei binomial no c�lculo das probabilidades
Px0 = 1* (1/2)^0 *(1-(1/2))^(4-0);
Px1 = 4* (1/2)^1 *(1-(1/2))^(4-1);
Px2 = 6* (1/2)^2 *(1-(1/2))^(4-2);
Px3 = 4* (1/2)^3 *(1-(1/2))^(4-3);
Px4 = 1* (1/2)^4 *(1-(1/2))^(4-4);
%resultados iguais aos da al�nea a

%3.e.i 
Prob2maiscoroas= sum(Px(3:5)); % Soma de p2, p3 e p4 da fun�ao de probabilidade
%3.e.ii 
ProbAte1coroa= sum(Px(1:2)); % p0+p1
%3.e.iii
ProbEntre1e3= sum(Px(2:4)) % p1+p2+p3






