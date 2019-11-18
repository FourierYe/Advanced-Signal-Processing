clear
clc

T_s = 2/1000;
T_0 = T_s/10;
T_0_conv = T_0/2
t = -2*T_s:T_0:10*T_s;
t_conv = -2*T_s:T_0_conv:10*T_s;
p = @(t) rect((t-T_s/2)/T_s);

h = match_filter(t)

g = conv(p(t-T_s*1),h)
subplot(3,2,1)
plot(t,p(t-T_s))
title('signal(t)')
axis([min(t) max(t), -1,2])

subplot(3,2,2)
plot(t,h)
title('H(t)')
axis([min(t) max(t), -1,2])

subplot(3,2,3)
plot(t_conv, g)
title('signal(t) * H(t)')
axis([min(t_conv) max(t_conv), -1,12])