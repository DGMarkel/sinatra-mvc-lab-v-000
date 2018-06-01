class PigLatinizer

  def initialize(word)
    @word = word
  end 

  def piglatinize(word)
    if word[0].scan(/[aeiou]/) != []
      word += "way"
    else
      array = word.split /([aeiou].*)/
