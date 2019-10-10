% task 1

y = @(t) sin(2*pi*t)
subplot(3,2,1)
fplot(y, [0, 2.5])
title('y=sin2*pi*t')
xlabel('T axis')
ylabel('Y axis')
grid on
hold on

% task 2
T=0:0.01:2.5
X=exp(j*2*pi*T)
Real_X=real(X)
Imag_X=imag(X)
Abs_X=abs(X)
Angle_X=angle(X)
subplot(3,2,2)
plot(T, Real_X)
title('Real part of e^{j*2pi*t}')
grid on
xlabel('T axis')
ylabel('Real part of e^{j*2pi*t}')
subplot(3,2,3)
plot(T, Imag_X)
title('Imaginary part of e^{j*2pi*t}')
grid on
xlabel('T axis')
ylabel('Imaginary part of e^{j*2pi*t}')
subplot(3,2,4)
plot(T, Abs_X)
axis([0 2.5 0 2])
title('The absolute of e^{j*2pi*t}')
xlabel('T axis')
ylabel('The absolute of e^{j*2pi*t}')
grid on
subplot(3,2,5)
plot(T, Angle_X)
title('The angle of e^{j*2pi*t}')
grid on
xlabel('T axis')
ylabel('The angle of e^{j*2pi*t}')

% task 3
subplot(3,2,6)
axis([-1 1 -1 1 0 50])
plot3(Real_X, Imag_X, T)
title('The 3D plot of e^{j*2pi*t}')
xlabel('Real_x')
ylabel('Imag_x')
zlabel('T axis')

% The result can be found in problem_3.fig
