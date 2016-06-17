def greater_than_ten(array)
  temp = []
  array.each do |element|
    if element.is_a? Integer
      if element > 10
        temp << element
      end
    end
  end
  return temp
end
p greater_than_ten([1,4,5,23,14,"Hello there", false, nil])
