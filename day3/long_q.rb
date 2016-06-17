def long_q(array)
  temp = []
  array.each do |element|
    element.length > 15 ? temp << element : nil
  end
  return temp
end

p long_q(["What is your name", "How are you?", "Is that right?", "Are you John?", "How is everything?"])
