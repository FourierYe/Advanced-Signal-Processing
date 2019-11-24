function str = create_test_sequence(length)

% length means the length of binary sequence

if(mod(length,2) == 1)
    length = length +1;
end

str = '';
for i =1:length
    if(rand>0.5)
        str(i) = '1';
    else
        str(i) = '0';
    end
    
end
end