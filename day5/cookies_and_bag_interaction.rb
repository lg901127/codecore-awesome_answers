require "./cookie.rb"
require "./cookie_bag.rb"

bag=CookieBag.new

c1 = Cookie.new(5,6)
c2 = Cookie.new(5,6)
c3 = Cookie.new(5,6)
c4 = Cookie.new(5,6)
c5 = Cookie.new(5,6)
c6 = Cookie.new(5,6)
bag.add(c1)
bag.add(c2)
bag.add(c3)
bag.add(c4)
bag.add(c5)
bag.add(c6)

taken_cookie = bag.remove
puts taken_cookie.details
taken_cookie1 = bag.remove
puts taken_cookie.details

puts "#{bag.num_of_cookies}"
