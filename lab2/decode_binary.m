function origianl_code = decode_binary(encode_squence)

length_value = length(encode_squence);
origianl_code = "";

for i = 1:2:length_value
    str_sequency = [encode_squence(i),encode_squence(i+1)];
    origianl_code((i+1)/2) = modulate(str_sequency);
end

origianl_code = join(origianl_code,',');

end