def max_loop(array)
  max = 0
  array.each do |element|
    if element > max
      max = element
    end
  end
  max
end

def max_rec(array, max)
  if array.length == 0
    max
  elsif array[0] > max
    max = array[0]
    max_rec(array[1..-1], max)
  else
    max_rec(array[1..-1], max)
  end
end
# def recursive_max(array, max)
#  if array.length == 0
#    max
#  elsif
#    array[0]> max
#    max = array[0]
#    recursive_max(array[1..-1], max)
#   end
#  end
# p max_loop([2,5,1,3,7,20,40,2,6])
puts max_rec([5,1,3,7,20,40,2,6],0)
