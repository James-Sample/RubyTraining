# a = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# puts a  
# print a
# p a
# p a.last
# # add to array
# print a << 10
# puts a.append(10)
# puts a.push(10)
# puts a.pop
# print a.unshift(0)
# # get rid of duplicates
# puts a.uniq
# # item included
# puts a.include?(11)

# x = 1..100
# puts x
# puts x.class
# print x.to_a
# print x.to_a.shuffle

# z = (1..10).to_a
# puts z.reverse
# # to mutate array
# print z.reverse!

# turn string to array, use irb
z = %w(i am learning to code in ruby)
print z
 z.each do |food|
    print food + " "
 end
# iterate in irb
 z.each {|food| print food + " "}

 y = (1..100).to_a.shuffle
 y.select {|number| number.odd}