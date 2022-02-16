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


def rec_range(start, max) #2, 3
  return start if start == max - 1  # s2: 2 == 2
  rec_range(start + 1, max) # rec_range(2, 3)
end





