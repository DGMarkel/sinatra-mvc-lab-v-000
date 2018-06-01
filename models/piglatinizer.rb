class PigLatinizer

  def initialize(word)
    @word = word
  end

  def vowel_checker(letter)
    case letter.downcase
    when /[aeiou]/
      true
    else
      false
    end
  end



  def piglatinize(word)
    if vowel_checker(word[0]) == true
      word += "way"
    else
      array = word.split /([aeiou].*)/
      new_word = array[1] + array[0] + "ay"
    end
  end
