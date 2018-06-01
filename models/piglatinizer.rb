class PigLatinizer

  def initialize(word)
    @word = word
  end

  def is_vowel(letter)
    case letter.downcase
    when "a"
      true
    when "e"
      true
    when "i"
      true
    when "o"
      true
    when "u"
      true
    else
      false
    end
  end



  def piglatinize(word)
    if word[0].scan(/[aeiou]/) != []
      word += "way"
    else
      array = word.split /([aeiou].*)/
