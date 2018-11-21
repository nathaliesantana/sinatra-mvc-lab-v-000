require 'pry'

class PigLatinizer
  #Converts string into piglatin

  def piglatinize(user_input)
    text = user_input.split(" ")

    if text.size == 1
      # binding.pry
      word_piglatinize(text.first.split(''))
    else text.size >= 2
      @sentence = text
      sentence_piglatinize
    end
  end

    def word_piglatinize(word)
      vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
      if !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
        new_word = word.rotate(3)

      elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
        new_word = word.rotate(2)

      elsif !vowels.include?(word[0])
        new_word = word.rotate(1)

      else
        new_word = word << "w"
      end
      new_word << "ay"
      # binding.pry
      new_word.join
    end

    def sentence_piglatinize(sentence)
      sentence.map do |word|
        word.word_piglatinize
      end

    end






# For words that begin with consonant sounds, all letters before the initial vowel are placed at the end of the word sequence. Then, "ay" is added
#
# When words begin with consonant clusters (multiple consonants that form one sound), the whole sound is added to the end when speaking or writing.
#
# For words that begin with vowel sounds, one just adds "way" or "yay" to the end (or just "ay").





end
