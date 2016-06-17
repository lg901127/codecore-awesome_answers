def reverse(string)
  array = string.split("")
  temp = []
  (array.length-1).downto(0).each do |i|
    temp << array[i]
  end
  return temp.join("")
end

def reverse_2nd(string)
  array = string.split("")
  

end
p reverse("this is a test")
