def book(book_array)
  # book_array.map! do |name|
  #   word = name.split(" ")
  #   word.first ? word.capitalize! : word = word
  #   word.map! do |w|
  #     w == "the" ? w = w : w.capitalize!
  #   end
  # end
  # p book_array
end

book(["game of throne", "the davinci code", "hello", "hello the"])
