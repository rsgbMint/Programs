% Calculamos z1
z1 = (1-sqrt(3)*i)**1/6

% Calculamos z2
z2 = (((1+i)*(1-i)**4)/(1+sqrt(3)*i)**3)**1/3

% Para z1
% La forma trigonométrica
% El módulo
r1 = abs(z1)
% El ángulo
theta1 = angle(z1)
% La forma trigonométrica será:
form_trig1 = r1*(cos(theta1) + i*sin(theta1))

% La forma exponencial
form_exp1 = r1*exp(i*theta1)

% Para z2
% La forma trigonométrica
% El módulo
r2 = abs(z2)
% El ángulo
theta2 = angle(z2)
% La forma trigonométrica será:
form_trig2 = r2*(cos(theta2) + i*sin(theta2))

% La forma exponencial
form_exp2 = r2*exp(i*theta2)