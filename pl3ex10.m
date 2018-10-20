%Clear
clear all;
close all;
clc;

a=0;
b=10; % distribuiçao de A a B, 0 a 10;


%a)
x=3
Pmenor3= (x-a)/(b-a);

%b)
x=7;
Probmenoriguala7= (x-a)/(b-a);
Probmaior7=1-Probmenoriguala7;

%c)
x=6
Probmenor6=(x-a)/(b-a);
x=1
Probmenor1=(x-a)/(b-a);
Probentre1e6=Probmenor6-Probmenor1;

%Simulaçoes
%X<3
N= 1e5; %numero de experiencias
lancamentos=10*rand(1,N);
resultadosmenor3 = lancamentos < 3;
sucessos3= sum(resultadosmenor3);
Simulacaoa = sum(sucessos3)/N;

%X>7
resultadosmaior7 = lancamentos > 7;
sucessos7= sum(resultadosmaior7);
Simulacaob = sum(sucessos7)/N;

%1<X<6
resultadosmenor1 = lancamentos < 1;
sucessos1= sum(resultadosmenor1);
pmenor1 = sum(sucessos1)/N;

resultadosmenor6 = lancamentos < 6;
sucessos6= sum(resultadosmenor6);
pmenor6 = sum(sucessos6)/N;

Simulacaoc= pmenor6-pmenor1;