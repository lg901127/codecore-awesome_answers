
def b_search(array, target)
  array.sort!
  min = 0
  max = array.length - 1
  guess = (min + max) / 2
  while array[guess] != target
    if array[guess] < target
      min = guess + 1
      guess = (min + max) / 2
    else
      max = guess - 1
      guess = (min + max) / 2
    end
  end
  guess
end

def b_search_rec(array, target, max, min)
  array.sort!
  guess = (max + min) / 2
  if array[guess] < target
    min = guess + 1
    b_search_rec(array, target, max, min)
  elsif array[guess] > target
    max = guess - 1
    b_search_rec(array, target, max, min)
  else
    return guess
  end
end
array=[1,2,3,4,5,6,7,8,9,10]
p b_search(array, 6)
p b_search_rec(array, 2, 9, 0)
