def hash_of_info(first_name, last_name, city_of_birth, age)
  info_pool = {}
  info_pool["first name"] = first_name.capitalize if first_name.is_a? String
  info_pool["last name"] = last_name.capitalize if last_name.is_a? String
  info_pool["city of birth"] = city_of_birth.capitalize if city_of_birth.is_a? String
  info_pool["age"] = age if age.is_a? String
  info_pool.each do |a, b|
    puts "Your #{a} is #{b}"
  end
  # puts "Your first name is #{info_pool["first name"]}"
  # puts "Your last name is #{info_pool["last name"]}"
  # puts "Your city of birth is #{info_pool["city of birth"]}"
  # puts "Your age is #{info_pool["age"]}"
end

print "First Name: "
a = gets.chomp
print "Last Name: "
b = gets.chomp
print "City of Birth: "
c = gets.chomp
print "Age: "
d = gets.chomp

hash_of_info(a,b,c,d)
