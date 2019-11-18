T_s = 2/1000;
T_0 = T_s/10
t=-1*T_s:T_0:2*T_s;
p=rect((t-T_s/2)/T_s);

plot(t,p);

xlabel('sec')
title('p(t), Ts = 2msec')
axis([-1*T_s,2*T_s,0,2])