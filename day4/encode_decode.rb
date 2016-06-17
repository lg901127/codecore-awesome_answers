$chart = {
  "c" => 0,
  "d" => 13,
  "h" => 26,
  "s" => 39,
  "A" => 0,
  "2" => 1,
  "3" => 2,
  "4" => 3,
  "5" => 4,
  "6" => 5,
  "7" => 6,
  "8" => 7,
  "9" => 8,
  "T" => 9,
  "J" => 10,
  "Q" => 11,
  "K" => 12
}
$chart_inv = $chart.invert

def encode(array)
  temp = []
  array.each do |element|
    letters = element.split("")
    sum = 0
    letters.each do |code|
      sum = sum + $chart[code]
    end
    temp << sum
  end
  p temp.sort
end

def decode(array)
  array.sort!
  temp = []
  array.each do |element|
    if element / 13 == 3
      digit_2 = "s"
    elsif element / 13 == 2
      digit_2 = "h"
    elsif element / 13 == 1
      digit_2 = "d"
    else
      digit_2 = "c"
    end
    if element % 13 == 0
      digit_1 = "A"
    elsif element % 13 == 1
      digit_1 = "2"
    elsif element % 13 == 2
      digit_1 = "3"
    elsif element % 13 == 3
      digit_1 = "4"
    elsif element % 13 == 4
      digit_1 = "5"
    elsif element % 13 == 5
      digit_1 = "6"
    elsif element % 13 == 6
      digit_1 = "7"
    elsif element % 13 == 7
      digit_1 = "8"
    elsif element % 13 == 8
      digit_1 = "9"
    elsif element % 13 == 9
      digit_1 = "T"
    elsif element % 13 == 10
      digit_1 = "J"
    elsif element % 13 == 11
      digit_1 = "Q"
    else element % 13 == 12
      digit_1 = "K"
    end
    temp << (digit_1 + digit_2)
  end
  p temp
end

encode(['Ac', 'Ks', '5h', 'Td', '3c'])
decode([0, 51, 30, 22, 2])
