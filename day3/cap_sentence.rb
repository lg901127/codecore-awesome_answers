def cap_sentence(sentence)
  # sentence = sentence.split(" ")
  # sentence.each do |letter|
  #   letter.capitalize!
  # end
  # sentence = sentence.join(" ")
  # p sentence
  sentence = sentence.split(" ")
  sentence.map! do |elm|
    elm.capitalize
  end
  sentence = sentence.join(" ")
  p sentence
end

cap_sentence("i have a dream")
