class Game
attr_accessor :guessed_letters, :hidden_word, :player

  def initialize(hidden_word, player)
    @guessed_letters = []
    @hidden_word = hidden_word
    @player = player
  end

  def check_player_lives(player)
    if
    @player.lives == false
    p "sorry you are out of lives"
    end
  end

  def play_game
    @hidden_word.create_initial_word_array
    #need to add the next bit when I know what it is called @hidden-word.methodname
    @hidden_word.create_asterisk_array(array)
    while   @hidden_word.compare_guess_array_to_initial_word_array(array, asterisk_array) != true
        if @player.lives_at_zero_check != true
          p "sorry you have ran out of lives"
        else
          p "give me a letter"
          letter = gets.chomp
          if @hidden_word.word_includes_guess_letter(letter) == false
            @player.lose_a_life
          else
          @hidden_word.compare_guess_letter_to_word(letter, array)
      end
    #end loop

  end
end
end
end
