T_0=2
f_0=1/T_0
t=-10*T_0:T_0/10:10*T_0
sinc_set=sinc(f_0*t)
plot(t, sinc_set)
grid on

hold on
[row, col, zero_points]=find(abs(sinc_set) <= 0.01)
plot(t(col),sinc_set(col),'m+')
for i=1: 1: 21
    t(1, col(1,i+1))-t(1, col(1,i))
end
% Interpret
% As we can see from diagram, the function shake around the zero(0) and the interval of zeros become narrow.
% The reason of this phenomenon is that sin(x) is period function and pi*x is nonperiodic function. Therefore
% the combination of these, sinc(x) function, is shake around zeros. In
% addition, the function of y=kx will become larger with increase of x but y=sin(x) will not become larger, the range of 
% y=sin(x) is at [-1, 1], so the range of sinc(x) will become samller.  