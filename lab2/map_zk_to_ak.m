function ak_sequence = map_zk_to_ak(zk)

length_value = length(zk)
ak_sequence = []

for i=1:length_value
a_k = [4,2,-2,-4]

distance = abs(a_k - zk(i))

% key-value
alphabet = containers.Map(distance, a_k);

% sort distance 
distance_sorted = sort(distance)

ak = alphabet(distance_sorted(1))

ak_sequence = [ak_sequence ak]
end
end