def multiply(num_1, num_2)
    num_1.to_f * num_2.to_f
end

def divide(num_1, num_2)
    num_1.to_f / num_2.to_f
end

def addition(num_1, num_2)
    num_1.to_f + num_2.to_f
end

def subtract(num_1, num_2)
    num_1.to_f - num_2.to_f
end

def modulus(num_1, num_2)
    num_1.to_f % num_2.to_f
end

puts "Welcome to the calculator"
puts "enter first number"
num_1 = gets.chomp
puts "enter second number"
num_2 = gets.chomp

puts "Add #{addition(num_1, num_2)}"
puts "Sub #{subtract(num_1, num_2)}"
puts "Mult #{multiply(num_1, num_2)}"
puts "Div #{divide(num_1, num_2)}"
puts "Mod #{modulus(num_1, num_2)}"
