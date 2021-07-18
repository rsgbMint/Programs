% Limpiamos nuestro ambiente de trabajo
clear all
clc

% Establecemos el número de muestras
n = -5:5;

% Para el periodo w = 2*pi/T
T = 4;

% Frecuencia
f = 1/T;

% La función
xn = sin(2*pi*f*n);

% Gráfica de la función en el tiempo discreto
stem(n,xn)
grid on
pause