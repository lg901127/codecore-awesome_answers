def unique_in_order(iterable)
  #your code here
  temp = iterable.split("")
  (0...temp.length-1).each do |i|
    if temp[i] = temp[i+1]
      temp.delete_at(i)
      temp.shift!
    end
  end
  return temp
end

puts unique_in_order('AAAABBBCCDAABBB')
