t = [0:0.001:4*pi];
f1 = 1/(2*pi);
fc = sin(2*pi*f1*t);
subplot(311);
plot(t,fc);
xlim([0, 4*pi])
title("f_c")
xlabel("Tiempo (s)")
ylabel("Señal Moduladora")
grid on

f2 = 5;
fm = sin(2*pi*f2*t);
subplot(312);
plot(t,fm);
xlim([0, 4*pi])
title("f_m")
xlabel("Tiempo (s)")
ylabel("Señal portadora")
grid on

FM = fm.*fc;
subplot(313);
plot(t, FM);
xlim([0, 4*pi])
title("FM = f_m*\ \ f_c")
xlabel("Tiempo (s)")
ylabel("Señal Modulada")
grid on
pause
