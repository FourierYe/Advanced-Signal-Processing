clear
clc

T_s = 2/1000;
T_0 = T_s/10;
t = -2*T_s:T_0:6*T_s;

singals_points = generate_defort_signals()

[m,n] = size(singals_points)

subplot(2,2,1)
plot(singals_points)
grid on
axis([0 81 -5 5]) 


signal_noise_y = add_noise(singals_points)
subplot(2,2,2)
plot(signal_noise_y)
grid on
axis([0 81 -10 10]) 

T_s = 2/1000
T_0 = T_s /10
t = -2*T_s:T_0:6*T_s

h_t = match_filter(t);

z_t = T_0/T_s*conv(singals_points,h_t);
subplot(2,2,3)
plot(z_t)
grid on
axis([0 161 -4 4])

z_t_noise =  T_0/T_s*conv(signal_noise_y, h_t)
subplot(2,2,4)
plot(z_t_noise)
grid on
axis([0 161 -4 4])

zk = generate_zk(z_t_noise)