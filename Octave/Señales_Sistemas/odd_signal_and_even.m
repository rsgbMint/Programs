%%%%%%%%%%%%%%%%%%% f(t) %%%%%%%%%%%%%%%%%%%%%%%%
t = -2:0.0001:2;

u1 = t>=-2;
u2 = t>-1;
f_cos = cos(2*pi*1/4*t);
u3 = t>1;
ft = -0.5*u1 + 0.5*u2 + u2.*f_cos - u3.*f_cos + 0.5*u3;

subplot(141)
plot(t, ft)
title("f(t)")
grid on

%%%%%%%%%%%%%%%%%%% fe(t) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
u1 = t<=2;
u2 = t<1;
f_cos_oe = cos(2*pi*1/4*-t);
u3 = t<-1;
ftn = -0.5*u1 + 0.5*u2 + u2.*f_cos_oe - u3.*f_cos_oe + 0.5*u3;

fteven = (ft + ftn)/2;
subplot(142)
plot(t, fteven)
title("f_e(t)")
grid on

%%%%%%%%%%%%%%%%% fe(t) %%%%%%%%%%%%%%%%%%%%%%%%%%%
ftodd = (ft - ftn)/2;
subplot(143)
plot(t, ftodd)
title("f_o(t)")
grid on

%%%%%%%%%%%%%%% fe(t) + fo(t) %%%%%%%%%%%%%%%%%%%%%%
ft = ftodd + fteven;
subplot(144)
plot(t, ft)
title("f(t) = f_o(t) + f_e(t)")
grid on
pause