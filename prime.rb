require 'pry'

def prime?(int)
  if int < 0  #accounts for negatives
    return false
  else  #sieve
    num_array = (0..int).to_a #create an array of numbers 0 - int
    num[0] = num[1] = nil #set 0 and 1 to nil

    num_array.each do |num| #iterate through num_array
      next if num.nil? #skips nil and continues the next iteration
      break if (num * num) > int
      num.step(int, num)  { |i| num_array[i] = nil }
      #binding.pry
      #step through array in intervals of num until reaching int in question
      #replace each interval number with nil
    end
    num_array.include?(int) #checks to see if int remains in array
  end
end
