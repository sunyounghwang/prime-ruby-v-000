require 'pry'

def prime?(int)
  if int < 0 || int == (0 || 1) #accounts for negative num, 0, and 1
    return false
  else  #sieve
    num_array = (0..int).to_a #create an array of numbers 2 - int

    num_array.each do |num| #iterate through num_array
      next if num.nil? #skips nil values and continues the next iteration
      #break if (num * num) > int
      num.step(int, num)  { |i| num_array[i] = nil }
      binding.pry
      #step through array in intervals of num until reaching int in question
      #replace each interval number with nil
    end
    num_array.include?(int) #checks to see if int remains in array
  end
end
