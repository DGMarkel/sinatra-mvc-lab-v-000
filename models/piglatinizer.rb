class PigLatinizer

  def initialize(word)
    @word = word
  end

  def is_vowel(letter)
    case letter.downcase
    when /[aeiou]/
      true
    else
      false
    end
  end



  def piglatinize(word)
    if is_vowel(word[0])
      word += "way"
    else
      array = word.split /([aeiou].*)/
