def triangle(n)
  n.times do
   counter = 1
   n.times do
     puts ("o " * counter).center(n * 2)
     counter += 1
  end
 end
end
