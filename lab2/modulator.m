function transmit_signal = modulator(sequence)

transmit_signals = [];

% decode sequence
decode_value = decode_binary(sequence);

value = split(decode_value,',')

a_k = str2num(char(value));

length_ak = length(a_k)

T_s = 2/1000;
T_0 = T_s/10;
t = 0:T_0:6*T_s;
p = @(t) rect((t-T_s/2)/T_s);

for i = 1:length_ak
    transmit_signal = a_k(i) * p(t-i*T_s);
    transmit_signals = [transmit_signals;transmit_signal];
end

transmit_signal = sum(transmit_signals);

end