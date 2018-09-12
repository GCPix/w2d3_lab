require('Minitest/autorun')
require('Minitest/rg')

require_relative('../hidden_word')

class HiddenWordTest < Minitest::Test
  def setup

    @guess_word = HiddenWord.new("Holiday")


  end

def test_get_word
  assert_equal("Holiday", @guess_word.word)
end

def test_word_has_letter__true
  result = @guess_word.word_includes_guess_letter("o")

  assert_equal(true, result)
end

def test_word_has_letter__false
  result = @guess_word.word_includes_guess_letter("z")

  assert_equal(false, result)
end

# def test_create_initial_word_array
#   actual = @guess_word.word.count == create_initial_word_array.length
#
#   assert_equal(true, actual)
# end
end
