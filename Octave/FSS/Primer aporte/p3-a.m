% Limpiamos nuestro ambiente de trabajo
clear all
clc

% 3. Utilice Matlab (software) para graficar las funciones y explique:
% a) x(t) = 2sen(3t - pi/2) - cos(2t)

% Primero establecemos el rango del tiempo
t = 0:0.001:8;

% Para el primer término que es el que tiene al seno
% Para la amplitud
A1 = 2;

% La fase de dicho seno 
fase1 = pi/2;

% Periodo
T1 = 2*pi/3;

% Frecuencia
f1 = 1/T1;

% La primer término de la función
x1 = A1*sin(2*pi*f1*t - fase1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Para el segundo término que es el que tiene al coseno
% Para la amplitud
A2 = 1;

% La fase de dicho seno 
fase2 = 0;

% Periodo
T2 = pi;

% Frecuencia
f2 = 1/T2;

% La primer término de la función
x2 = A2*cos(2*pi*f2*t - fase2);

% La función final
x = x1 - x2;

% Para trazar la gráfica
plot(t,x,'linewidth',2)
title('Parte a) de la 3ra pregunta')
grid on