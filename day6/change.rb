def coin(n)
  quarters = n / 25
  dimes = (n - quarters * 25) / 10
  nickels = (n - quarters * 25 - dimes * 10) / 5
  cents = n - quarters * 25 - dimes * 10 - nickels * 5
  puts "Q: #{quarters}"
  puts "D: #{dimes}"
  puts "N: #{nickels}"
  puts "C: #{cents}"
end
coin(99)

def coin_rec(remaining, coin_box)
  if remaining >= 25
    remaining -= 25
    coin_box << 25
    coin_rec(remaining, coin_box)
  elsif remaining >= 10 && remaining < 25
    remaining -= 10
    coin_box << 10
    coin_rec(remaining, coin_box)
  elsif remaining >= 5 && remaining < 10
    remaining -= 5
    coin_box << 5
    coin_rec(remaining, coin_box)
  elsif remaining > 0 && remaining < 5
    remaining -= 1
    coin_box << 1
    coin_rec(remaining, coin_box)
  else
    return coin_box
  end
end

p coin_rec(99, [])
