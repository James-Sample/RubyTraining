require "bcrypt"

my_password = BCrypt::Password.create("my password")
puts my_password
puts my_password.version
puts my_password.cost
puts my_password == "my password"
puts my_password == "not my password"
my_password = BCrypt::Password.new("$2a$12$Adx50TjkkjFin45C62HNU.LO4FEQ/CwfphZ6/ymtDMv1VeL.jRQK2")
puts my_password == "my password"
puts my_password == "not my password"