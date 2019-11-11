T_s = 2/1000
T_0 = T_s /10
t = -2*T_s:T_0:6*T_s

h_t = match_filter(t);

singals_points = modulator(4);

singal_points = sum(singals_points);

z_t = conv(singal_points,h_t);

plot(z_t)

axis([0,200,-100,100])
