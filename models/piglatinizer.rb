class PigLatinizer
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def vowel_checker(letter)
    letter.match(/[AEIOUaeiou]/) ? true : false;
  end

  def piglatinize
      word_array = @word.split(" ")
      word_array.each do |word|
        if vowel_checker(word[0]) == true
          word += "way"
        else
          array = word.split /([aeiou].*)/
          "#{array[1] + array[0]}ay"
        end
      end
      word_array.join(" ")
  end

end
