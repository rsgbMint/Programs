% Creamos un número complejo
z1 = 2 + 3i;

% Para obtener la magnitud de número complejo
rho = abs(z1);

% Para hallar el ángulo de un número complejo
theta = angle(z1)

% Número complejo en su forma polares 
Zp = rho*(cos(theta) + i*sin(theta))

% Número complejo en su forma exponencial
Ze = rho*exp(i*theta)
