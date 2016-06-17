def user_into(name, age, cities)
  info_pool ={}
  info_pool["name"] = name
  info_pool["age"] = age
  info_pool["cities"] = cities

  puts info_pool["name"]
  puts info_pool["age"]
  info_pool["cities"].each do |x|
    puts x
  end
end

print "Name: "
name = gets.chomp
print "Age: "
age = gets.chomp
flag = true
city_pool = []
while flag
  cities = gets.chomp
  city_pool << cities
  flag = false if cities == "done"
end
city_pool.pop

user_into(name, age, city_pool)
