# Exes and Ohs
# Difficulty: medium/hard

# This is a great question for interview prep, so lets not google it. 
# Instead, try whiteboarding, and thinking of your approach before coding. There are multiple approaches to this question, so try to think of the most efficient one you can!

# Write a method that will take a string as an input. 
# The method will check this string, and count the amount 
# of 'x's and 'o's. It should return true if the amount of 'x's 
# and 'o's are the same, and should return false if they are different. 
# It should also be case insensitive, and work with any set of two 
# characters (for example, the string could contain "oooxxx" or
# "eeefff" - both of these would return true because there are
# two distinct characters and an equal number of each in both
# examples).

# Example input: "ooxx"
# Expected output: true

# Example input: "oOxXxoX"
# Expected output: false

# Example input: "ooXx"
# Expected output: true

# Example input: "rtrt"
# Expected output: true

# Example input: "RtrT"
# Expected output: true

# Example input: "efefy"
# Expected output: false

def exes_and_ohs(input)
    # Split individual letters into array
    letters = input.downcase.split(//)
    uniq_array = letters.uniq
    return false if uniq_array.count != 2
    letters.count(uniq_array[0]) == letters.count(uniq_array[1]) ? true : false
end

p exes_and_ohs("ooxx")
p exes_and_ohs("oOxXxoX")
p exes_and_ohs("ooXx")
p exes_and_ohs("rtrt")
p exes_and_ohs("RtrT")
p exes_and_ohs("efefy")