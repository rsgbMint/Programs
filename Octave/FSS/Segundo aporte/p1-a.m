% Definimos los números complejos
z1 = 2*sqrt(3) + 2i
z2 = 2*exp(pi*i/3)

% Ahora lo graficamos
plot(z1,'or',z2, 'ob')
grid on
xlabel('Eje real')
ylabel('Eje imaginaria')
title('Afijos z1 y z2')
pause