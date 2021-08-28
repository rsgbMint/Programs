clear all
clc

% for the time
t = -5:0.001:5;

% First function's part
i1 = (t>=0)*1.0;

% Seconf function's part
i2 = (t>=0.001)*1.0;

% The final function
it = i1 - i2;
plot(t,it,'b','linewidth',2)
title('\delta (t)')
grid on
pause