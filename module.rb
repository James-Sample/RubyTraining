require_relative 'crud'

# also could do
# $LOAD_PATH << "."
# require "crud"

users = [
    {username: "James", password: "password1"},
    {username: "Matt", password: "password2"},
    {username: "Jack", password: "password3"},
    {username: "Alex", password: "password4"},
    {username: "Mike", password: "password5"}
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users