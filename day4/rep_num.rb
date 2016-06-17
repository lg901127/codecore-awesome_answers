
def rep_num(array)
  h = Hash.new(false)
  array.each do |element|
    if h[element] == false
      h[element] = true
    else
      return element
    end
  end
end

def rep_num_2(array)
  array.select do |element|
    array.count(element) > 1
  end
  # array.detect do |element|
  #   return element if array.count(element) > 1
  # end
end

p rep_num([1,2,4,5,6,8,8,23])
p rep_num_2([1,2,4,5,6,8,8,23])
