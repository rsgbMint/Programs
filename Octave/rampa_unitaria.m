clear all
clc

% vector tiempo
t = -5:0.001:8; 
% pendiente
m = 1;

% First part
r1 = (t>=0).*t*m;

% Second part
r2 = (t>=0).*(t-1)*-m;

% The final function
rt = r1 + r2;

% For plotting the function
figure 1
subplot(1,2,1)
plot(t,r1,'linewidth',2)
grid on
subplot(1,2,2)
plot(t,r2,'linewidth',2)
grid on

figure 2
plot(t,r1,'linewidth',2)
hold on
plot(t,r2,'linewidth',2)

pause