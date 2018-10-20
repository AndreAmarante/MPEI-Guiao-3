%Clear
clear all;
close all;
clc;

%faces do dado
X=1:6;

%Vetor de probabilidades de cada face
Px=ones(1,6)/6;

subplot(1,2,1) %subplot com 1 linha e 2 colunas, faz na 1ª
stem(X,Px)
%labels
title('Função Massa de Probabilidade')
xlabel('x')
ylabel('P_X(x)')

%1.b
Fx=cumsum([0 Px]); % Vetor com probabilidades acumuladas
subplot(1,2,2);
stairs(0:6, Fx)
title('Função de Distribuição Acumulada')
xlabel('x')
ylabel('F_X(x)')


