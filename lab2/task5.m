T_s = 2;
T_0 = 2/10;
t = -2*T_s:T_0:6*T_s;

singals_points = modulator(5)

[m,n] = size(singals_points)

for i=1:m
   
    plot(t,singals_points(i,:))
    hold on 
end

axis([-3,9,-5,5])


legend('x_1','x_2','x_3','x_4')