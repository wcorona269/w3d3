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



# Using recursion and the is_a? method, write an Array#deep_dup method that will perform a "deep" duplication of the interior arrays.

# Note: For simplicity's sake, we are only going to ensure the deep duplication of arrays. 
# Don't worry about deep-duping (or regular-duping) other types of mutable objects (like strings, hashes, instances of custom classes, etc.),
#  since this would require that we implement a deep dup method for each of those classes, as well.

#def deep_dup(arr)
  #if arr.empty?
  #  return []
 # end

  #new_array = []

 # arr.each do |ele|
   # if !ele.is_a?(Array)
    #  new_array << ele
   # else
  #    new_array << deep_dup(ele) # << this runs in a bubble
 #   end
 # end

 # new_array
# end


  # if arr.length == 1
  #   return arr
  # end
  
  # arr.each do |sub_arr|
  #   deep_dup(sub_arr) + arr[1..-1]
  # end




## robot_parts = [
##   ["nuts", "bolts", "washers"],
##   ["capacitors", "resistors", "inductors"]
## ]

## arr1 = [1, 3, [2]]

## p deep_dup(arr1)



def iter_fibonacci(n)
  fibo_seq = []
  i = 0
  a = 1
  b = 1
  while i < n
    if a < b
      fibo_seq << a
      a += b
      i += 1 # a = a + b
    else
      fibo_seq << b
      b += a
      i += 1
    end
  end

  return fibo_seq
end


# p iter_fibonacci(7)



def rec_fib(n) #n == 3
  return 1 if n == 0
  
end

p rec_fib(3)
