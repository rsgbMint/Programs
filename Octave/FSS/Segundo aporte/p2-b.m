% Calculamos z1
z1 = (1-sqrt(3)*i)**1/6

% Calculamos z2
z2 = (((1+i)*(1-i)**4)/(1+sqrt(3)*i)**3)**1/3

% Para hacer las gráficas:
% Para z1
compass(z1, 'r')
hold on

% Para z2
compass(z2, 'b')

% Ángulo en grados sexagesimales de z1
theta1 = angle(z1)*180/pi

% Ángulo en grados sexagesimales de z2
theta2 = angle(z2)*180/pi
pause