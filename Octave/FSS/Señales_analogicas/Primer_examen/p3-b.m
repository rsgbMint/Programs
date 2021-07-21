% Limpiamos nuestro ambiente de trabajo
clear all
clc

% 3. Utilice Matlab (software) para graficar las funciones y explique:
% b) x(t) = sen(5t) + sen(pi*t)

% Primero establecemos el rango del tiempo
t = 0:0.001:8;

% Para el primer término de la función
% Para la amplitud
A1 = 1;

% Su fase 
fase1 = 0;

% Periodo
T1 = 2*pi/5;

% Frecuencia
f1 = 1/T1;

% La primer término de la función
x1 = A1*sin(2*pi*f1*t - fase1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Para el segundo término de la función
% Para la amplitud
A2 = 1;

% La fase de dicho seno 
fase2 = 0;

% Periodo
T2 = 2;

% Frecuencia
f2 = 1/T2;

% La primer término de la función
x2 = A2*cos(2*pi*f2*t - fase2);

% La función final
x = x1 - x2;

% Para trazar la gráfica
plot(t,x,'linewidth',2)
title('Parte b) de la 3ra pregunta')
grid on