def prime(n)
  if n == 0
    false
  elsif n == 1
    false
  elsif n == 2
    true
  else
    (2..Math.sqrt(n)).each do |x|
      if n % x == 0
        return false
      else
        return true
      end
    end
  end
end

p prime(13)
