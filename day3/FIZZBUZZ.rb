def FIZZBUZZ(a, b)
  array = Array(1..100)
  array.each do |elm|
    if elm % 3 == 0 && elm % 5 == 0
      # elm = elm.to_s + a + b
      array[array.index(elm)] = array[array.index(elm)].to_s + a + b
    elsif elm % 3 == 0
      # elm = elm.to_s + a
      array[array.index(elm)] = array[array.index(elm)].to_s + a
    elsif elm % 5 == 0
      # elm = elm.to_s + b
      array[array.index(elm)] = array[array.index(elm)].to_s + b
    end
  end
  puts array
end

FIZZBUZZ("FIZZ", "BUZZ")
