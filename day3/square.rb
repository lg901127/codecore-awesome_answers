def square(array)
  array.map! do |elm|
    elm.map! do |subelm|
      subelm = subelm ** 2
    end
  end
  return array
end

p square([[2,3,4], [5,6,7], [6,7,8]])
