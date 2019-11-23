function zk = generate_zk(Z,num)

% @paraam Z means sequence
% @param num means the number of symbol    

zk = [];
step = 10;
stop_value = 11 + num * step;

for i = 21:step:stop_value
    zk = [zk Z(i)];
end
end