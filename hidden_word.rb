class HiddenWord
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def word_includes_guess_letter(letter)
    return @word.include?(letter)
  end

def create_initial_word_array

  array = hidden_word.split(“”)
end

def create_asterisk_array(array)
  asterisk_array = []
   for letter in array
       if letter == ” ”
         asterisk_array.push(letter)
       else
         asterisk_array.push(“*”)
       end
   end
   return asterisk_array
end

def compare_guess_letter_to_word(asterisk_array, array, guess)
   for letter in array
     if letter == guess
       asterisk_array.delete_at(count)
       asterisk_array.insert(count,guess)
     end
   end

 end

 def compare_guess_array_to_initial_word_array(array, asterisk_array)
   if array == asterisk_array
     return true
   end
 end
end
