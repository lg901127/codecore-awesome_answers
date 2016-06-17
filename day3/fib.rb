def fib(n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    return fib(n-1) + fib(n-2)
  end
end

def first_x_fib(x)
  array = []
  (1..x).each do |i|
    array << fib(i)
  end
  return array
end

print "number: "
num = gets.chomp.to_i
p first_x_fib(num)
