function zk = generate_zk(Z)

zk = []
step = 10

for i = 41:step:length(Z)
    if abs(Z(i))>1
        zk = [zk Z(i)]
    end
end
end