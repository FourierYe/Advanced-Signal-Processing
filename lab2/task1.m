% create key-value map
% we can use list[struct()] to implement this function
alphabet = containers.Map({'00', '01', '11','10'},...
    {'4', '2', '-2','-4'});

str = create_test_sequence(100)

decode_value = decode_binary(str,alphabet)
