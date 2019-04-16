# Count Letters

# Write a method that will take a string, keep count
# of each letter and return the totals as a hash.

# Example:
# count_letters("hello") should return {"h"=>1, "e"=>1, "l"=>2, "o"=>1}
# count_letters("mississippi") should return {"m"=>1, "i"=>4, "s"=>4, "p"=>2}

# Check your solution by running the tests:
# ruby tests/08_count_letters_test.rb

def count_letters (string)
  result = Hash.new(0) # You'll need an empty hash to get started!
    split_var = string.split("") # Split string & assign to variable
    
    split_var.each do |count| # For each element in 'string_split' variable, we assign value to 'count'
      result[count] += 1      # Add 1 to the 'count' value in hash
    end

    return result # return the hash
end

puts count_letters("hello")
puts count_letters("mississippi")