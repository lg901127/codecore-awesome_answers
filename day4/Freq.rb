def freq(array)
  counter = Hash.new(0)
  array.each do |element|
    counter[element] += 1
  end
  return counter
end

p freq([1,2,3,4,4,4,4,4,2,2,3,3,3])
