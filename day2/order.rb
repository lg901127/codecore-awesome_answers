puts "Order? "
order = gets.chomp
case order
when "Starbucks"
  puts "Grande Latte"
when "Tim Hortons"
  puts "Double Double"
when "Blenz"
  puts "Medium Coffee"
else
  puts "I don't know this shop"
end
