def sort_book()
  book = []
  flag = true
  while flag
    print "please enter your book name: "
    name = gets.chomp
    book << name
    name == "exit" || name == "Exit" ? flag = false : flag = true
  end
  book.delete("exit")
  p cap_sentence(book)
end

def cap_sentence(sentence)
  # sentence = sentence.split(" ")
  sentence.map! do |elm|
    elm = elm.split(" ")
    elm.map! do |word|
      word.capitalize
    end
  end
  # sentence = sentence.join(" ")
  sentence.map! do |elm|
    elm.join(" ")
  end
  return sentence
end

sort_book()
