function signal_value = generate_defort_signals()

a_1 = 4;
a_2 = 2;
a_3 = -2;
a_4 = -4;

T_s = 2/1000;
T_0 = T_s/10;
t = -2*T_s:T_0:6*T_s;
p = @(t) rect((t-T_s/2)/T_s);

x_1 = a_1 * p(t-1*T_s);
x_2 = a_2 * p(t-2*T_s);
x_3 = a_3 * p(t-3*T_s);
x_4 = a_4 * p(t-4*T_s);

signal_value = x_1 +x_2+x_3+x_4;

end