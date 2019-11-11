clear 
clc

T_s = 2/1000;
T_0 = T_s/10;
t = -2*T_s:T_0:6*T_s;

singals_points = modulator(4)

[m,n] = size(singals_points)

singal_points = sum(singals_points)
subplot(2,2,1)
plot(t, singal_points)

axis([0*T_s, 6*T_s, -5 5])

signal_noise_y = add_noise(singal_points)
subplot(2,2,2)
plot(t,signal_noise_y)

T_s = 2/1000
T_0 = T_s /10
t = -2*T_s:T_0:6*T_s

h_t = match_filter(t);

z_t = conv(singal_points,h_t);
subplot(2,2,3)
plot(z_t)


z_t_noise = conv(signal_noise_y, h_t)
subplot(2,2,4)
plot(z_t_noise)

