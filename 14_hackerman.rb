# You have to stop the infamous hackerman by writing a basic security program.

# Your task is to write a program which will ask the user for input twice.
# Both times should ask the user to type words and will display the FIRST input.

# However if any of the words in the second input match with a word from the
# first input it should say "HIDDEN" instead of the matched word.

# Example:
# first_input = bob rob dob mob
# second_input = kob fob dob

# output = bob rob HIDDEN mob

# Check your solution by running:
# ruby 14_hackerman.rb

def compare_input(first_input, second_input)
    first_input.each do |word|
        if second_input.include?(word)
            first_input[first_input.index(word)] = "HIDDEN"
        end
    end

    puts first_input.join(" ")
end

puts "Please enter a string:"
first = gets.chomp.downcase.split(" ")

puts "Please enter another string:"
second = gets.chomp.downcase.split(" ")

compare_input(first, second)

# Beast mode:
# Does your code deal with capital letters? Update your solution so that
# they will be downsized if they are input but HIDDEN remains capitalised.