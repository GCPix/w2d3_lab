require('Minitest/autorun')
require('Minitest/rg')

require_relative('../hidden_word')
require_relative('../player')
require_relative('../game')

class GameTest < Minitest::Test
  def setup

    @player1 = Player.new("Stephen")

    @guess_word = HiddenWord.new("Holiday")

    @game1 = Game.new(@guess_word, @player1)


  end

  def test_get_guessed_letters_array
    assert_equal([], @game1.guessed_letters)
  end

  def test_get_word_to_start_game()
    assert_equal("Holiday", @game1.hidden_word.word)
  end

  def test_get_player_initial_points
    assert_equal(6, @game1.player.lives)
  end



end
