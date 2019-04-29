# Your challenge is to write a program which will ask the user for input.
# The code should then output the number of times words are used.

# Example:
# If the words 'hi hi Hi hello 1 1' are input, the result should be:
# hi 2
# Hi 1
# hello 1
# 1 2

# Test your solution by running 12_count_words


puts "Please enter some words, any words!"
input = gets.chomp

def count_words(words)
    word_hash = Hash.new(0)
    words.downcase.split.each do |word|
        word_hash[word] += 1
    end
    return word_hash
end


# Beast Mode:
# Change your code so that it doesn't matter if capital letters are used,
# In the above example the result should be:
# hi 3
# hello 1
# 1 2