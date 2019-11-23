clear
clc

a_1 = 4;
a_2 = 2;
a_3 = -2;
a_4 = -4;

T_s = 2/1000;
T_0 = T_s/10;
t = 0:T_0:6*T_s;
p = @(t) rect( (t-T_s/2)/T_s );

x_1 = a_1 * p(t-1*T_s);
x_2 = a_2 * p(t-2*T_s);
x_3 = a_3 * p(t-3*T_s);
x_4 = a_4 * p(t-4*T_s);
% X = x_1 +x_2+x_3+x_4;

tp = 0:T_0:(T_s-T_0);
h = p(tp)

z_1 = T_0/T_s * conv(x_1,h);
z_2 = T_0/T_s * conv(x_2,h);
z_3 = T_0/T_s * conv(x_3,h);
z_4 = T_0/T_s * conv(x_4,h);
Z = z_1+z_2+z_3+z_4

tz = T_0 * (1:(length(z_1)));

subplot(3,2,1)
plot(tz, z_1)
title('x_1 * h(t)')
axis([0,T_0*length(z_1),-4,4])

subplot(3,2,2)
plot(tz,z_2)
title('x_2 * h(t)')
axis([0,T_0*length(z_2),-4,4])

subplot(3,2,3)
plot(tz,z_3)
title('x_3 * h(t)')
axis([0,T_0*length(z_3),-4,4])

subplot(3,2,4)
plot(tz,z_4)
title('x_4 * h(t)')
axis([0,T_0*length(z_4),-4,4])

subplot(3,2,5)
plot(tz,Z)
title('x * h(t)')
axis([0,T_0*length(Z),-4,4])
