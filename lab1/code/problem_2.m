% task 1

y_1=@(x) x.^2
fplot(y_1, [0, 2])

% results can be found from this folder

% task 2

y_2=@(x) x.^(1/2)
fplot(y_2, [0, 2])

% results can be found from this folder

% task 3

y_1=@(x) x.^2
fplot(y_1, [0, 2])
hold on
y_2=@(x) x.^(1/2)
fplot(y_2, [0, 2])
xlabel('X axis')
ylabel('Y axis')
grid on
title('The compare with y_1=x^2 and y_2=x^{(1/2)}')
legend('y_1=x^2','y_2=x^{(1/2)}')


% results can be found from this folder