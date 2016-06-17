def fac(n)
  return 1 if n <= 1
  a = n * fac(n-1)
  return a
end

p fac(5)
