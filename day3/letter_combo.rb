def combo(letters)
  array = letters.split("")
  temp = []
  (0...array.length-1).each do |i|
    temp[i] = array[i] + array[i+1]
  end
  return temp
end

p combo("abcdefghijk")
