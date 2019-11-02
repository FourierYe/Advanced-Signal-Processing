function transmit_signal = modulator(size)

alphabet = containers.Map({'00', '01', '11','10'},...
    {'4', '2', '-2','-4'});

str = create_test_sequence(size*2);

decode_value = decode_binary(str,alphabet)

value = split(decode_value,',')

a_k = str2num(char(value))

T_s = 2;
T_0 = 2/10;
t = -2*T_s:T_0:6*T_s;
p = @(t) rect((t-T_s/2)/T_s);
transmit_signal = a_k * p(t-1*T_s);

end