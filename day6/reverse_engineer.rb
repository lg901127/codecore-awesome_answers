def reverse_engineer(array, init)
  array.each do |element|
    if element.is_a? Array
      reverse_engineer(element, init)
    else
      init << element
    end
  end
  init
end


p reverse_engineer([1,2,3,[4,5],6,7,[2,[1,4]]], [])
