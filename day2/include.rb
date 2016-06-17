def include_c(string)
  if string.upcase.include?  "C"
    puts "Yes it has C"
  else
    puts "There is no C"
  end
end

include_c("i got nothing ")
