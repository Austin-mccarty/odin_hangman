puts "Loading hangman.rb..."

puts defined?(initialize_display)


def get_random_word
    File.readlines("google-10000-english-no-swears.txt").sample.chomp
end

def initialize_display(word)
    Array.new(word.length, "_")
end

def update_display(word, current_display, letter)
    word.chars.each_with_index do |char, index|
        if char == letter
            current_display[index] = letter
        end
    end
    current_display
end

def get_letter
    puts "Guess a letter: "
    gets.chomp.downcase
end

def check_letter(word, current_display, letter)
    if word.include?(letter)
        puts "Correct!"
        update_display(word, current_display, letter)
    else
        puts "Incorrect!"
    end
    current_display
end

def check_word_complete(current_display)
    if current_display.include?("_")
        false
    else
        true
    end
end




