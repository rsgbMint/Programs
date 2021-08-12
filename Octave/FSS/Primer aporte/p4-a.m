% Limpiamos nuestro ambiente de trabajo
clear all
clc

% 4. Utilice Matlab (software) para graficar las funciones y explique:
% a) x[n] = u[n] - 2u[n-1] + u[n-4]

% Primero establecemos el número de muestras (tiempo discreto)
n = -5:5; % habrá 11 valores discretos de tiempo

% Para el primer término
x1 = (n>=0);

% Para el segundo término
x2 = (n>=1);

% Para el segundo término
x3 = (n>=4);

% La función final
xt = x1 - 2*x2 + x3;

% Para trazar la gráfica del tiempo discreto
stem(n,xt,'linewidth',2)
title('Parte a) de la 4ta pregunta')
grid on
pause