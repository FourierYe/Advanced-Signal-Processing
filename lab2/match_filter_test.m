function bk = match_filter_test(binary_sequence, mu, variance)

% @ param mu is mean of noise
% @ param variance is the variance of noise

% generate original signal
signals_points = modulator(binary_sequence);

% add noise to original signal
xt_noisy = add_noise_parameters(signals_points,mu,variance);

% create h(t) signal
T_s = 2/1000;
T_0 = T_s /10;
t = 0:T_0:6*T_s;

ht = match_filter(t);

% convolute x(t) and h(t)
Z = T_0/T_s * conv(xt_noisy,ht);

% samping zk from zt
zk = generate_zk(Z,4);

% map zk to ak
ak = map_zk_to_ak(zk);

% map ak to bk
bk = demapper(ak);

end