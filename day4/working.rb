# h = {
#   Sony: ["ele", "aaa"],
#   Ford: "car",
#   Pizzahut: "Pizza"
# }
# p h[:Sony][0]
def method(*a)
  yield(a) if block_given?
end

method(123,324,23,5) do |x|
  puts x
end
