# def fac(n)
#   n == 0 ? 1 : n * fac(n-1)
# end
#
# p fac(5)
# p fac(0)
# p fac(1)
# p fac(10)
# def fac_loop(n)
#   if n == 0
#     return 1
#   else
#     fac = 1
#     (1..n).each do |x|
#       fac = fac * x
#     end
#     return fac
#   end
# end
#
# p fac_loop(5)
#
# def reverse_string(string)
#   if string.length == 0
#     return string
#   else
#     string = string[-1] + reverse_string(string[0..-2])
#   end
# end
#
# p reverse_string("hello")

def array_mul(array)
  if array.length == 0
    array
  elsif array[-1].is_a? Array
    array_mul(array[0..-2]) << array_mul(array[-1])
  else
    array_mul(array[0..-2]).push(array[-1] ** 2)
  end
end

p array_mul([1,2,4])
