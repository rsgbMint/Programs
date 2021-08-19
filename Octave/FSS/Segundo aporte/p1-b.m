% Definimos los números complejos
z1 = 2*sqrt(3) + 2i
z2 = 2*exp(pi*i/3)

% Hallamos el producto de ambos números complejos
% En forma binómica
form_bin = z1*z2

% En forma exponencial
% Primero debemos calcular el módulo y el ángulo

% Para z1
% El módulo
r1 = abs(z1)
% Para el ángulo
theta1 = angle(z1)
% La forma exponencial se construirá así:
form_exp1 = r1*exp(i*theta1)

% Para z2
% El módulo
r2 = abs(z2)
% Para el ángulo
theta2 = angle(z2)
% La forma exponencial se construirá así:
form_exp2 = r2*exp(i*theta2)

% Por lo tanto, el producto en forma exponencial será:
form_exp = form_exp1*form_exp2

% Para la gráfica de en la forma polar, se hace lo siguiente:
compass(form_bin)
pause