function bk = match_filter_test(binary_sequence, mu, variance)
signals_points = modulator(binary_sequence)

xt = sum(signals_points);

xt_noisy = add_noise_parameters(xt,mu,variance);

T_s = 2/1000
T_0 = T_s /10
t = -2*T_s:T_0:6*T_s

ht = match_filter(t)

Z = T_0/T_s * conv(xt_noisy,ht)

zk = generate_zk(Z)

ak = map_zk_to_ak(zk)

bk = demapper(ak)

end