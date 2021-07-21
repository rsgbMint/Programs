clear all
clc

% for the time
t = -5:0.001:5;

% the function
xt = (t>=0);

% for plotting the graph
plot(t,xt,'r','linewidth',2)
grid on
pause