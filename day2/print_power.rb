def power(a)
  return a ** 3 if a % 3 == 0
  return a ** 2 if a % 2 == 0
  return a
end

puts power(1)
