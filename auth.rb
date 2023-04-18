users = [
    {username: "James", password: "password1"},
    {username: "Matt", password: "password2"},
    {username: "Jack", password: "password3"},
    {username: "Alex", password: "password4"},
    {username: "Mike", password: "password5"}
]

def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record
        end
    end
    puts "Credentials not found"
end

puts "Welcome to the authanticator"
25.times { print "-"}
puts
puts "This program will take input from user and compare password"
attempts = 1
while attempts < 4
    puts "Please Enter a Username:"
    username = gets.chomp
    puts "Please Enter a password"
    password = gets.chomp
    authentication = auth_user(username, password, users)
    puts authentication
    puts "Press n to exit or any other key to continue"
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
end
puts "You have exceeded max attempts"