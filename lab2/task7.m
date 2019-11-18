clear
clc

T_s = 2/1000
T_0 = T_s /10
T_0_conv = T_0/2
t = -2*T_s:T_0:6*T_s
t_conv = -2*T_s:T_0_conv:6*T_s

subplot(2,2,1)
h_t = match_filter(t);
plot(t, h_t)
title('h(t)')
axis([min(t) max(t), -2,2])

signals_points = generate_defort_signals();
subplot(2,2,2)

plot(t, signals_points)
title('y(t)')
axis([min(t) max(t),-5,5])

z_t = conv(signals_points,h_t);
subplot(2,2,3)
plot(t_conv,z_t)
title('z(t)')
axis([min(t_conv) max(t_conv), -50,50])
