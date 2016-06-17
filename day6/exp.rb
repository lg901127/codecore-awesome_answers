def expo(n, e)
  if e == 0
    1
  elsif e == 1
    n
  else
    n * expo(n, e-1)
  end
end

p expo(5, 3)
