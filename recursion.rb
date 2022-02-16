# def range(start, max)
#   new_array = []

#   i = start
#   while i < max
#     new_array << i
#     i += 1
#   end

#   new_array
# end

# p range(1, 8)


# Write a recursive method, range, that takes a start and an end and returns an array of all numbers in that range, exclusive. 
# For example, range(1, 5) should return [1, 2, 3, 4]. If end < start, you can return an empty array.


# def rec_range(start, max) #rec_range(1, 2)
#   return [] if start >= max
#   rec_range(start, max -1) << max - 1
# end

# def rec_range(start, max) #rec_range(1, 2)
#   return [] if start >= max
#   rec_range(start + 1, max).unshift(start)

# p rec_range(1, 20)

def exp_1(base, exp)
  return 1 if exp <= 0
  return base if exp == 1

  base * exp_1(base, exp - 1) 
end

# p exp_1(2, 3)

def exp_2(b, n) 
  return 1 if n == 0
  return b if n == 1

  if n.even?
    exp_2(b, n / 2) ** 2
  else
    b * (exp_2(b, (n - 1) / 2) ** 2)   
  end
end

# p exp_2(2, 5)







