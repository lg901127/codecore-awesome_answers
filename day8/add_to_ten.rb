def to_ten(array, target)
  min = 0
  max = array.length - 1
  while min < max
    if array[min] + array[max] == target
      return array[min], array[max]
    elsif array[min] + array[max] < target
      min += 1
    else array[min] + array[max] > target
      max -= 1
    end
  end

  puts "not found"
end

p to_ten( [-3, 4, -1, 5, 10, 0, 11], 10)
