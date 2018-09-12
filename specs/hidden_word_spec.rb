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

def test_create_initial_word_array

   array = @guess_word.word.create_initial_word_array

   actual = array.length
  assert_equal(7, actual)
end

def test_create_asterisk_array
# array1 = #@guess_word.word.create_initial_word_array
# result = @guess_word.create_asterisk_array(array1)
#
#   assert_equal(["*","*","*","*","*","*","*"], result)
end

def test_compare_guess_inital_word_array__true

end

def test_compare_guess_inital_word_array__false

end
end
