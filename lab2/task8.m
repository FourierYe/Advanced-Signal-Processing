clear
clc

T_s = 2/1000;
T_0 = T_s/10;
T_0_conv = T_0/2
t = 0*T_s:T_0:10*T_s;
p = @(t) rect((t-T_s/2)/T_s);

h = match_filter(t)

g = conv(p(t-T_s*1),h)

zt = T_0 * (1:length(g))
plot(zt, g)
title('g(t)')