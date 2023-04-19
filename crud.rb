# users = [
#     {username: "James", password: "password1"},
#     {username: "Matt", password: "password2"},
#     {username: "Jack", password: "password3"},
#     {username: "Alex", password: "password4"},
#     {username: "Mike", password: "password5"}
# ]

# module.rb, we added self. to start of all methods but not needed for students.rb
module Crud
  require 'bcrypt'
  puts "Module loaded correctly"
  
  # method to create password
  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end
  
  # new_password = create_hash_digest("password1")
  # puts new_password
  
  # method to verify password
  def verify_hash_digest(password)
   BCrypt::Password.new(password)
  end
  
  # method to authenticate user
  def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end
  
  # puts create_secure_users(users)
  # create array with hashed passwords
  # new_users = create_secure_users(users)
  
  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
        return user_record
      end
    end
    "Credentials were not correct"
  end
end
# p authenticate_user("James", "password", new_users)