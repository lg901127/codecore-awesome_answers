# def pascal(num_rows)
#   return [] if num_rows == 0
#   return [[1]] if num_rows == 1
#
#   num_rows, rows, row = num_rows - 2, [[1], [1, 1]], [1, 1]
#   num_rows.times do
#     row = row.each_cons(2).map { |c1, c2| c1 + c2 }
#     row.insert(0, 1) << 1
#     rows << row
#   end
#   rows
# end

def pascal(num_rows)
  comb = []
  current_row = 0
  while current_row != num_rows
    to_print = ""
    for i in 0..current_row
      to_print += comb.combination(i).count.to_s
      to_print += " "
    end
    comb << "p"
    current_row += 1
    print "#{to_print.center(60)}\n"
  end
end


pascal(10)
