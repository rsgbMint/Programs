% Limpiamos nuestro ambiente de trabajo
clear all
clc

% 4. Utilice Matlab (software) para graficar las funciones y explique:
% b) x[n] = (n+2)u[n+2] - 2u[n] - nu[n-4]

% Primero establecemos el número de muestras (tiempo discreto)
n = -5:5; % habrá 11 valores de tiempo discreto

% Para el primer término
x1 = (n>=-2);

% Para el segundo término
x2 = (n>=0);

% Para el segundo término
x3 = (n>=4);

% La función final
xt = (n+2)*.x1 - 2*.x2 - n*.x3;

% Para trazar la gráfica del tiempo discreto
stem(n,xt,'linewidth',2)
title('Parte b) de la 4ta pregunta')
grid on
pause