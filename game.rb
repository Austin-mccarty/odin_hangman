require_relative 'hangman.rb'

#method to start the game
def start_game
    word = get_random_word
    current_display = initialize_display(word)
    max_tries = 15
    incorrect_tries = 0

    until incorrect_tries >= max_tries
        puts current_display.join(' ')
        
        letter = get_letter()
        updated_display = check_letter(word, current_display, letter)

        if updated_display == current_display
            incorrect_tries += 1
        else
            current_display = updated_display
        end
        
        if check_word_complete(current_display)
            return puts "Congratulations! You guessed the word."
        end
    end

    puts "Out of tries! The word was '#{word}'. Better luck next time."
end

start_game()