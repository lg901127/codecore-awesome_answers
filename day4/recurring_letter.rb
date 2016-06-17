def recurring_letter(string)
  array = string.gsub(/\s/, '').split('')
  counter = Hash.new(0)
  array.each do |element|
    counter[element] += 1
  end
  counter.each do |letter, amount|
    return letter if amount == counter.values.max
  end
end
p recurring_letter("aaa bbb dd cccc ee f aaaaaa     ")
