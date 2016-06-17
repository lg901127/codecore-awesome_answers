def sort_num(array)
  (array.length).times do
    (0...array.length-1).each do |index|
      if array[index] > array[index + 1]
        temp = array[index]
        array[index] = array[index + 1]
        array[index + 1] = temp
      end
    end
  end
  return array
end

p sort_num([5,12,7,1,4,7,3,5,9,0,8])
