postcodes = {
  "stockport" => "SK1",
  "edinburgh" => "E1",
  "glasgow" => "G1",
  "london" => "SE1",
  "newcastle" => "N1",
  "liverpool" => "L1",
  "leeds" => "LS1",
  "manchester" => "M1",
  "birmingham" => "B14"
}

# get city names from the hash
def get_city_names(somehash)
  somehash.keys
end
# get area code based on given hash and key
def get_postcode(somehash, key) 
  somehash[key]
end
        
loop do
  puts "Do you want to look up a postcode? (Y/N)"
  answer = gets.chomp.downcase
  if answer != "y"
    break
  else
    puts get_city_names(postcodes)
    print "Enter a city name:"
    city = gets.chomp.downcase
    if postcodes.include?(city)
      puts "The postcode for #{city} is #{get_postcode(postcodes, city)}"
    else
      puts "Invalid City"
    end
  end
end
