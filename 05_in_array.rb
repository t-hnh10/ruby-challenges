# Methods

# Write a method called 'in_array' which will take 
# two parameteres:
# One as a string and one as an array of strings

# Return a boolean indicationg whether or not the
# string is found in the array.

# Test your solution with:
# ruby tests/05_in_array_test.rb

# Example:
# "hello", ["hi","howdy","hello"] should return true.

# def starts the definition of the method
def in_array (string, array)
  if array.include?(string) #=> true
    return true
  else
    return false
  end
end

puts in_array("hello", ["hi","howdy","hello"])

# Beast Mode:

# Redo the challenge but try solving it again in a different way.

=begin def in_array (needle, haystack)
  # first approach
  return haystack.include?(needle)

  #second approach
  haystack.each { |h| return true if h == needle }
  return false

  haystack.each do |h|
    return true if h == needle
    end
    return false

    # setting up variable i
    i = 0
    # we want to go through this loop once through our element
    while i < haystack.length do
      if haystack[i] == needle
        return true # return i if question asked to return index of needle
      end
      i += 1
    end
      return false
  end
# two dots in a range say 'include the last value', three dots say 'don't include the last value
  for i in (0..haystack.length - 1)
    if haystack[i] == needle
    return true
    end
  end
  return false
=end