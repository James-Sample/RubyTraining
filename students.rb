require_relative 'crud'

class Student
    include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

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

billy = Student.new("Billy", "Smith", "bsmith@email.com", "BilSmith", "password1")
john = Student.new("John", "Jones", "jj@email.com", "JohnJo", "password2")

hashed_password = billy.create_hash_digest(billy.password)

p hashed_password