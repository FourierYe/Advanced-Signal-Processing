clear
clc

subplot(2,2,1)
f_1=10
t_1=0:1/f_1/100:2*1/f_1
x_1= 2*sin(2*pi*f_1*t_1)
plot(t_1,x_1)
axis([0 2*1/f_1 -2 2])
title('The diagram of 2*sin(2*pi*f_1*t_1)')
xlabel('t_1 axis')
grid on
ylabel('2*sin(2*pi*f_1*t_1)')

subplot(2,2,2)
x_2= 2+x_1
plot(t_1,x_2)
axis([0 2*1/f_1 0 4])
title('The diagram of 2*sin(2*pi*f_1*t_1)+2')
grid on
xlabel('t_1 axis')
ylabel('2*sin(2*pi*f_1*t_1)+2')

subplot(2,2,3)
f_3=10*f_1
t_1=0:1/f_1/100:2*1/f_1
x_3= sin(2*pi*f_3*t_1)
plot(t_1,x_3)
title('The diagram of sin(2*pi*f_3*t_1)')
xlabel('t_1 axis')
ylabel('sin(2*pi*f_3*t_1)')
grid on
axis([0 2*1/f_1 -1 1])

subplot(2,2,4)
x_4=x_1.*x_3
plot(t_1,x_4)
title('The diagram of 2*sin(2*pi*f_1*t_1)*sin(2*pi*f_3*t_1)')
xlabel('t_1 axis')
ylabel('2*sin(2*pi*f_1*t_1)*sin(2*pi*f_3*t_1)')
grid on
axis([0 2*1/f_1 -2 2])

% result
% 2*sin(2*pi*f_1*t_1)*sin(2*pi*f_3*t_1) function should be negative part
% and postive part. In addition, in(2*pi*f_3*t_1) is a high frequency
% component of x_4(t).
