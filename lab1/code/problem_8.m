clear
clc
t = 0:0.005:2
x_t = cos(20*pi * t)
subplot(2, 1, 1)
plot(t, x_t)
title('The time space of cos(20*\pi * t)')
xlabel('t axis')
ylabel('x_t=cos(20*\pi * t)')
[f, s] = ft(t, x_t)
subplot(2, 1, 2)
plot(f, s)
title('The frequency space of cos(20*\pi * t)')
xlabel('s axis')
ylabel('x_s')

% result
% As we can see the fourier transformation of sin(w_0*x) is the sum of two Dirac function.
% Because it is generalized fourier transformation and Dirac is test function of function analysis.
% 
% clear
% clc
% t = -2:0.0001:2
% subplot(2, 1, 1)
% rect = rect_function(t)
% plot(t, rect)
% grid on
% title('the time space of rect_function')
% xlabel('t axis')
% ylabel('rect_function')
% subplot(2, 1, 2)
% [f, s] = ft(t, rect)
% plot(f, s)
% grid on
% title('the frequency space of rect_function')
% xlabel('s axis')
% ylabel('fourier transformation of rect_function')

clear 
clc
t=-20:0.05:20;
w=10;
y=rectpuls(t,w); %¾ØÐÎÂö³åÐÅºÅ
[S, F]=ft(t, y);
subplot(2,1,1)
plot(y);
subplot(2,1,2)
plot(S,F);
axis(-1,1)