T_s = 2/1000;
T_0 = T_s/10;
t = -2*T_s:T_0:10*T_s;
p = @(t) rect((t-T_s/2)/T_s);

h = match_filter(t)

g = conv(p(t-T_s*1),h)
subplot(3,2,1)
plot(p(t-T_s))
title('signal(t)')

subplot(3,2,2)
plot(h)
title('H(t)')

subplot(3,2,3)
plot(g)
title('signal(t) * H(t)')