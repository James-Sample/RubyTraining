# need capital letter
class Student
# attribute accessors - so we dont have to speacify getter and setter methods for each variable
  attr_accessor :first_name, :last_name, :email, :username, :password
## attribute reader, can only use to read variable not set
# attr_reader :username
# # instance variables
#   @first_name
#   @last_name
#   @email
#   @username
#   @password

# so you can set variables when creating a new object
  def initialize(firstname, lastname, email, username, password)
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last Name: #{last_name}
     Email: #{email}, Username: #{username}"
  end
end

# # to create a new object off class
# billy = Student.new
# # puts billy # will default to to_s method, which is a hex value as default
# billy.first_name = "Billy"
# billy.last_name = "Smith"
# billy.email = "bsmith@email.com"
# billy.username = "BilSmith"
# puts billy.first_name
# puts billy.username
# puts billy

billy = Student.new("Billy", "Smith", "bsmith@email.com", "BilSmith", "password1")
john = Student.new("John", "Jones", "jj@email.com", "JohnJo", "password2")

puts billy
puts john

billy.last_name = john.last_name
puts "Billy has been updated"
puts billy