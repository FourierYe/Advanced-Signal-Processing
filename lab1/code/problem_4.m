f_0=10^3;
T_0=1/f_0;
t_1=0:T_0/10:2*T_0
x_1=sin(2*pi*t_1*f_0)
plot(t_1,x_1)
xlabel('T axis')
ylabel('x(t) = sin(2*pi*f_0*t)')
title('Same function with different frequency of sampling')
hold on
t_2=0:T_0/20:2*T_0
x_2=sin(2*pi*t_2*f_0)
plot(t_2, x_2)
hold on
t_3=0:T_0/4:2*T_0
x_3=sin(2*pi*t_3*f_0)
plot(t_3,x_3)
legend('T_s=T_0/10','T_s=T_0/20','T_s=T_0/4')

% result
% As we can see from this diagram, if we use different frequencies of sampling, we will get different figure. 
% This is because, the high frequency of sampling, the detail of sin(x) will be saved. The lower frequency of sampling, 
% the detail of sin(x) will be lost.