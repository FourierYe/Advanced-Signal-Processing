original_sequence_list = []
bk_list = []

% increase variance to test function
for i = 1:50
    original_sequence = create_test_sequence(8);
    bk = match_filter_test(original_sequence,0,5);
    
    original_sequence_list = [original_sequence_list;original_sequence]
    bk_list = [bk_list;bk]
end

% check different index
error_position = original_sequence_list ~= bk_list
