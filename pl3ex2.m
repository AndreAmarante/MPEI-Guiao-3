%Clear
clear all;
close all;
clc;

%2.a
 % Espa�o de amostragem contem 100 notas, sendo 90 de 5 euros, 9 de 50 euros e 1 de 100 euros.
 % Probabilidades elementares: P(nota100)=1/100, P(nota50)=9/100, P(nota5)=90/100

%2.b
 % O espa�o de amostragem contem os tr�s valores poss�veis das notas, 5, 50 e 100.
 % A fun�ao massa de probabilidade vai atribuir a cada um destes 3 valores, 
 % a respetiva probabilidade, em cima descrita.
 
%2.c
%valores das notas
X=[5, 50, 100];

%Vetor de probabilidades de cada nota
Px=[90/100, 9/100, 1/100];

stem(X,Px)
%labels
title('Fun��o Massa de Probabilidade')
xlabel('Valor da nota')
ylabel('P_X(nota)')