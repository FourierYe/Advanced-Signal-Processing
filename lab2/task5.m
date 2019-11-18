clear
clc

T_s = 2/1000;
T_0 = T_s/10;
t = -2*T_s:T_0:6*T_s;

% generate rand sequence
% @ parameter the length of sequence
sequence = create_test_sequence(8);

singals_points = modulator(sequence)

[m,n] = size(singals_points)

singal_points = sum(singals_points)
plot(t, singal_points)

axis([0*T_s, 6*T_s, -5 5])