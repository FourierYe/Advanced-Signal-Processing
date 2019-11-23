clear
clc

T_s = 2/1000
T_0 = T_s /10
T_0_conv = T_0/2
t = 0:T_0:6*T_s
t_conv = 0:T_0_conv:6*T_s

h_t = match_filter(t);

signals_points = generate_defort_signals();

z_t = conv(signals_points,h_t);
tz = T_0*(1:length(z_t))
plot(tz,z_t)
title('z(t)')
axis([min(tz) max(tz), -50,50])
