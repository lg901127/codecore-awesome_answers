# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 10.times do
#   Product.create title: Faker::Commerce.product_name,
#                   description: Faker::Hipster.sentence,
#                   price: rand(5)/100
# end
["Books", "Music"].each do |cat|
  Category.create name: cat
end
