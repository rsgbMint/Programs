% Frecuencia de muestreo
Fs = 512;

% Periodo de muestreo
Ts = 1/Fs;

% Muestras
L = 1024; 

% Vector tiempo
t = (0:L-1).*Ts;

% Para la señal
s1 = (t>=0);
s2 = exp(-10*t);
s = s1.*s2;

% Para el espectro de fase de la señal
figure 1
Y = fft(s);
subplot(211)
plot(imag(Y), 'linewidth', 2)
title('Espectro de la fase')
xlabel('Frecuencia (Hz)')
ylabel('\angle X(f)')
grid on

% Para el espectro de magnitud de la señal
subplot(212)
plot(abs(Y), 'linewidth', 2)
title('Espectro de la magnitud')
xlabel('Frecuencia (Hz)')
ylabel("|X(f)|")
grid on

figure 2
% Señal recuperada
xt = ifft(Y);

% Para la gráfica de la señal
subplot(211)
plot(t, s, 'linewidth', 2)
title("Señal en el tiempo")
xlabel("Tiempo (s)")
ylabel("x(t)")
grid on

subplot(212)
plot(t, xt, 'linewidth', 2)
title("Señal recuperada")
xlabel("Tiempo (s)")
ylabel("x(t)")
grid on
pause
