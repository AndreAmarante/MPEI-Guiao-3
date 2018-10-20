%Clear
clear all;
close all;
clc;

%2.a
 % Espaço de amostragem contem 100 notas, sendo 90 de 5 euros, 9 de 50 euros e 1 de 100 euros.
 % Probabilidades elementares: P(nota100)=1/100, P(nota50)=9/100, P(nota5)=90/100

%2.b
 % O espaço de amostragem contem os três valores possíveis das notas, 5, 50 e 100.
 % A funçao massa de probabilidade vai atribuir a cada um destes 3 valores, 
 % a respetiva probabilidade, em cima descrita.
 
%2.c
%valores das notas
X=[5, 50, 100];

%Vetor de probabilidades de cada nota
Px=[90/100, 9/100, 1/100];

stem(X,Px)
%labels
title('Função Massa de Probabilidade')
xlabel('Valor da nota')
ylabel('P_X(nota)')