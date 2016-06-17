def combine(hash)
  temp = []
  hash.each do |key, value|
    temp << key.to_s + value
  end
  return temp

end

p combine({:a => "123", :b => "345", :c => "678", :d => "910"})
