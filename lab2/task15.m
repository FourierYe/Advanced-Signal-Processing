original_sequence_list = []
bk_list = []

% increase variance to test function
for i = 1:100
    original_sequence = create_test_sequence(8);
    bk = match_filter_test(original_sequence,0,i);
    
    original_sequence_list = [original_sequence_list;original_sequence]
    bk_list = [bk_list;bk]
end

% check different index
error_position = original_sequence_list ~= bk_list

[m,n] = size(error_position)

% find the variance when error happen 
variance_position = []
for i = 1:m
    if(ismember(1,error_position(i,:)))
        sprintf('When variance is %d, function cause error.',i) 
        variance_position = [variance_position,i]
    end
end

% show the density of error
scatter(variance_position,variance_position)