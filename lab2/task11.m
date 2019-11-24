clear
clc

T_s = 2/1000
T_0 = T_s /10
t = 0:T_0:6*T_s

singals_points = generate_defort_signals()

[m,n] = size(singals_points)

subplot(2,2,1)
plot(t,singals_points)
grid on
axis([0 max(t) -5 5]) 
title('x(t)')

signal_noise_y = add_noise_parameters(singals_points,0,10)
subplot(2,2,2)
plot(t,signal_noise_y)
grid on
axis([0 max(t) -8 8]) 
title('x(t) + noise')

h_t = match_filter(t);

z_t = T_0/T_s*conv(singals_points,h_t);
subplot(2,2,3)
tz = T_0*(1:length(z_t))
plot(tz,z_t)
grid on
axis([0 max(tz) -5 5])
title('z(t)')

z_t_noise =  T_0/T_s*conv(signal_noise_y, h_t)
subplot(2,2,4)
plot(tz,z_t_noise)
grid on
axis([0 max(tz) -5 5])
title('z(t) + noise')

zk = generate_zk(z_t_noise,4)