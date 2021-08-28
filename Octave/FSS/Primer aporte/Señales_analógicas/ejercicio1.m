clear all
clc

% To the time range
t = 0:0.001:8;

u1 = (t>=1);
u2 = (t>=2);
u3 = (t>=3);
u4 = (t>=4);
u5 = (t>=5);
u6 = (t>=6);

u = u1 + u2 - u3 + 2.*u4 - 2.*u5 - u6;
plot(t,u,'r','linewidth',2)
pause
