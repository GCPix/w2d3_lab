require('Minitest/autorun')
require('Minitest/rg')

require_relative('../hidden_word')
require_relative('../player')

class PlayerTest < Minitest::Test
  def setup

    @player1 = Player.new("Stephen")


  end

  def test_get_player_name
    assert_equal("Stephen", @player1.name)
  end
  def test_get_player_initial_lives
    assert_equal(6, @player1.lives)
  end

  # def test_lives_count__correct_guess
  #
  #   assert_equal(6, @player1.lives)
  # end

  def test_lives_count__incorrect_guess__above_zero
    @player1.lose_a_life
    assert_equal(5, @player1.lives)
  end
  def test_lives_count__incorrect_guess__already_zero
    @player1.lives = 0
    @player1.lose_a_life
    assert_equal(0, @player1.lives)
  end
  def test_does_lives_equal_zero__true
    @player1.lives = 0
    @player1.lives_at_zero_check
    assert_equal(true, @player1.lives_at_zero_check)
  end

  def test_does_lives_equal_zero__false
    @player1.lives_at_zero_check
    assert_equal(false, @player1.lives_at_zero_check)
  end
end
