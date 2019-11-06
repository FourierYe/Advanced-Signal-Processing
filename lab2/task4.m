a_1 = 4;
a_2 = 2;
a_3 = -2;
a_4 = -4;

T_s = 2;
T_0 = 2/10/1000;
t = -2*T_s:T_0:6*T_s;
p = @(t) rect((t-T_s/2)/T_s);
x_1 = a_1 * p(t-1*T_s);
x_2 = a_2 * p(t-2*T_s);
x_3 = a_3 * p(t-3*T_s);
x_4 = a_4 * p(t-4*T_s);

plot(t,x_1)
hold on
plot(t,x_2)
hold on
plot(t,x_3)
hold on
plot(t,x_4)
hold on
axis([-3,9,-5,5])


legend('x_1','x_2','x_3','x_4')