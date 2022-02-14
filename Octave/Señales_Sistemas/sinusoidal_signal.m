% donde: A: amplitud, Fo: frecuencia de la señal senoidal y phase: fase
clear all, close all, format compact
A = 0.5; % m. amplitud
Fo = 0.37; % Hz, Frecuencia de la señal s
t = [-5:0.01:5]; % tiempo en segundos
phase = 0*pi/180; % Rad. la fase de la señal senoidal
% La función seno es
x1t = A*cos(2*pi*Fo*(t) + phase); % Amplitud en metros
x2t = A*sin(2*pi*Fo*(t) + pi/2); % Amplitud en metros
yt = x1t + x2t;
subplot(3,1,1);
plot(t,x1t,'b','LineWidth',2), grid on, grid minor;% Grafica de la señal
title('Grafica de una señal senoidal')
xlabel('tiempo,   (s)') ; 
ylabel('Amplitud,    (m)') ; 
xlim([-5 5])
ylim([-2.5 2.5])
pause
