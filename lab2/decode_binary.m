function origianl_code = decode_binary(encode_squence)

alphabet = containers.Map({'00', '01', '11','10'},...
    {'4', '2', '-2','-4'});
length_value = length(encode_squence);
origianl_code = "";

for i = 1:2:length_value
    str_sequency = [encode_squence(i),encode_squence(i+1)];
    origianl_code((i+1)/2) = alphabet(str_sequency);
%     origianl_code =  [ origianl_code, alphabet(str_sequency)];
end

origianl_code = join(origianl_code,',')

end