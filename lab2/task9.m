Ts = 2/1000
T0 = T_s /10
a_1 = 4;

T_s = 2/1000;
T_0 = T_s/10;
t = -2*T_s:T_0:10*T_s;

x_1 = a_1 * p(t-1*T_s);
x_2 = a_2 * p(t-2*T_s);
x_3 = a_3 * p(t-3*T_s);
x_4 = a_4 * p(t-4*T_s);
X = x_1 +x_2+x_3+x_4;

p = @(t) rect( (t-Ts/2)/Ts );

tp = 0:T0:(Ts-T0);
h = p(tp)
z = T0/Ts * conv(X,h);

tz = T0 * (1:(length(z)));
plot(tz, z)

