%Clear
clear all;
close all;
clc;


%4.a) Analiticamente
Prob=0.3;
X=[0,1,2,3,4,5];
Px=[0,0,0,0,0,0];

for k=0:5
  c= combinacoes(5,k);
  Px(k+1)= c * Prob^k * (1-Prob)^(5-k);
endfor

%dificulades no uso do histograma, deixámos em stem
stem(Px);
xlabel('Nº peças defeituosas');
ylabel('P_X(x)');
axis([0 5 0 0.4]);

%4.a) Simulacao
N= 1e5; %numero de experiencias
p = 0.3; %probabilidade
Y= rand(5,N) < p;
%Probabilidades
resultados0 = sum(Y) == 0;
resultados1 = sum(Y) == 1;
resultados2 = sum(Y) == 2;
resultados3 = sum(Y) == 3;
resultados4 = sum(Y) == 4;
resultados5 = sum(Y) == 5;
p0= sum(resultados0)/N;
p1= sum(resultados1)/N;
p2= sum(resultados2)/N;
p3= sum(resultados3)/N;
p4= sum(resultados4)/N;
p5= sum(resultados5)/N;

PxSimulacao=[p0, p1, p2, p3, p4, p5];


%4.b) Analiticamente
Prob0defeito= combinacoes(5,0)* Prob^0*(1-Prob)^5;
Prob1defeito= combinacoes(5,1)* Prob^1*(1-Prob)^4;
Prob2defeito= combinacoes(5,2)* Prob^2*(1-Prob)^3;
Probf= Prob0defeito+Prob1defeito+Prob2defeito;

%4.b) Simulação
lancamentos = rand(5,N) < p;
sucessos= sum(lancamentos)<=2;
p = sum(sucessos)/N;