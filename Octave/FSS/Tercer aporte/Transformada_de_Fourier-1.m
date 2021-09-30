f = 0:0.1:50;
a = 10;
X = 1./(a + j*2*pi*f);
% Gráfica para el espectro de magnitud
subplot(211) 
plot(f, abs(X), 'linewidth', 2)
title('Espectro de la magnitud')
xlabel('Frecuencia (Hz)')
ylabel("|X(f)|")
grid on

% Gráfica para el espectro de la fase
subplot(212)
plot(f, angle(X), 'linewidth', 2)
title('Espectro de la fase')
xlabel('Frecuencia (Hz)')
ylabel('$\angle X(f)$')
grid on
pause