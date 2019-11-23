clear
clc

T_s = 2/1000;
T_0 = T_s/10;
t = 0:T_0:6*T_s;

% generate rand sequence
% @ parameter the length of sequence
% sequence = create_test_sequence(8);
% default sequence
sequence = '00011110';

transmit_signal = modulator(sequence)

plot(t, transmit_signal)

axis([0, 6*T_s, -5 5])