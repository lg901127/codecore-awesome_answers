def pluck(array, property)
  temp = []
  property = property.to_sym
  array.each do |element|
    if element.has_key? (property)
      temp << element[property]
    else
      temp << nil
    end
  end
  return temp
end

p pluck([{b:2}, {a:4, b:4}, {a:1}, {c:4}], "a")
