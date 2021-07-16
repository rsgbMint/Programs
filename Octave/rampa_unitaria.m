clear all
clc

% vector tiempo
t = -5:0.001:8; 
% pendiente
m = 1;

% First part
r1 = (t>=0).*t*m;

% Second part
r2 = (t>=1).*(t-1)*-m;

% The final function
rt = r1 + r2;

% For plotting the function
figure 1
plot(t,rt,'linewidth',2)
grid on

pause