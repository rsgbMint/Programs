% Limpiar el ambiente de trabajo
clear all 
clc

% Para el tiempo discreto
n = -5:5;

% El primer factor
factor = 0.9.^n;

% Para la expresión del seno
% Periodo
T1 = 8;

% Frecuencia
f1 = 1/T1;

% La expresión del seno
xn1 = sin(2*pi*f1*n);

% Para la expresión del coseno
% Periodo
T2 = 8;

% Frecuencia
f2 = 1/T2;

% La expresión del coseno
xn2 = cos(2*pi*f2*n);

% Función final
xn = factor.*(xn1 + xn2);
stem(n,xn,'linewidth',2)
grid on
pause