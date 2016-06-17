require "benchmark"
def to_num(num)
  if num == 0
    puts num
  else
    puts num
    to_num(num - 1)
  end
end


def recursive_num(num)
 if num == 50
   num
 else
   puts num
   recursive_num(num + 1)
 end
end

p recursive_num(1)

def to_num_loop(num)
  (1..num).each do |n|
    puts n
  end
end


Benchmark.bm do |x|
  x.report do
    p recursive_num(1)
  end
end

Benchmark.bm do |x|
  x.report do
    to_num_loop(50)
  end
end
