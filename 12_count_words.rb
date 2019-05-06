# Your challenge is to write a program which will ask the user for input.
# The code should then output the number of times words are used.

# Example:
# If the words 'hi hi Hi hello 1 1' are input, the result should be:
# hi 2
# Hi 1
# hello 1
# 1 2

# Test your solution by running 12_count_words

# Ask user for input
puts "Please give me a phrase of list of words"
input = gets.strip

# Count occurrence of each word in string
# Input is a string (phrase)
# Prints list of words with occurrence of each word (case insensitive)
def count_words(phrase)
    words_hash = Hash.new(0) # If I add a new key, the initial value is 0
    phrase.split("").each do |word|
        words_hash[word.downcase] += 1
    end
    print_word_count(words_hash)
    return words_hash
end

def print_word_count(words_hash)
    words_hash.each do |key, value|
        puts "#{key} #{value}"
    end
end

# # Initial attempt
# def count_words(words)
#     word_hash = Hash.new(0)
#     words.downcase.split.each do |word|
#         word_hash[word] += 1
#     end
#     return word_hash
# end

# Beast Mode:
# Change your code so that it doesn't matter if capital letters are used,
# In the above example the result should be:
# hi 3
# hello 1
# 1 2