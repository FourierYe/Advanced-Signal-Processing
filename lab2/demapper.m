function bk = demapper(ak)

length_value = length(ak)

alphabet = containers.Map({4, 2, -2,-4},...
    {'00', '01', '11','10'});

binary_sequence = []

for i =1 :length_value
    binary_value = alphabet(ak(i))
    binary_sequence = [binary_sequence binary_value]
end
    bk = join(binary_sequence,',')
end