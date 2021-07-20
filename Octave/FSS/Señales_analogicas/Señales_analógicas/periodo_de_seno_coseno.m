% Limpiar el área de trabajo
clear all
clc

% Tiempo
t = 0:0.001:10;

% Encontrar el periodo de: x(t) = x1(t) + x2(t) en donde:
% x1(t) = 0.9sen(pi*t), x2(t) 0.3sen(3*pi*t)

% Para x1:
% Periodo
T1 = 2;

% Frecuencia
f1 = 1/T1;

% Función x1(t):
x1 = 0.9*sin(2*pi*f1.*t);

% Para x2:
% Periodo
T2 = 2/3;

% Frecuencia
f2 = 1/T2;

% Función x2(t)
x2 = 0.3*cos(2*pi*f2.*t);

% Función final
x = x1 + x2;

% Periodo resultante: T1/T2 = n/m = T
[n,m] = rat(T1/T2);
T = m*T2;

% Para graficar los puntos del periodo
P = 0:T:5*T;

% Gráfica de la x
plot(t,x1,'r--',t,x2,'b--',t,x,'k',P,0,'go')
grid on
pause