def convert(hash)
  temp = {}
  hash.each do |name, value|
    temp[name] = value * 9 / 5 + 32
  end
  return temp
end
p convert({vancouver: 13.7, edmonton: 8.5, Calgary: 10.5})
