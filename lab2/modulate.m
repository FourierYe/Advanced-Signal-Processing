function symbol = modulate(bit_pair)

bit_pair_str = num2str(bit_pair);

length_value = length(bit_pair_str);

if length_value ~= 2
    error('decode error');
end

% hashmap key-value structure
alphabet = containers.Map({'00', '01', '11','10'},...
    {'4', '2', '-2','-4'});

symbol = alphabet(bit_pair);

end