sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}
my_details = {'name' => 'James' , 'favcolor' => 'red'}
p my_details['favcolor']
p sample_hash
p sample_hash.keys

sample_hash.each do |key, value|
    puts "The class for key is #{key.class} and the value is #{value.class}"
end


# keys will be symbols rather than strings
another_hash = {a:1, b: 2, c: 3}
p another_hash
p another_hash[:a]

another_hash.each do |key, value|
    puts "The class for key is #{key.class} and the value is #{value.class}"
end

my_hash = {a:1, b: 2, c: 3, d: 4}
my_hash[:e] = 5
my_hash[:b] = 6
p my_hash

my_hash.each { |key, value| puts "The key is #{key} and the value is #{value}" }

my_hash[:f] = "James"
p my_hash.select { |k, v| v.is_a?(String)}

my_hash.each { |k, v| my_hash.delete(k) if v.is_a?(String)}
p my_hash