def array_mul(array)
  array_cap_name = []
  array.each do |name|
    array_cap_name << name.capitalize
  end
  p array_cap_name
end

array_mul(["aaa", "bbb", "ccc"])
