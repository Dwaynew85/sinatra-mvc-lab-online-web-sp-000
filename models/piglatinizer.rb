class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def piglatinize_word(word)

  end

  def piglatinize
    words = @text.split(" ")
    piglatin = words.map {|word| piglatinize_word(word)}
    piglatin.join(" ")
  end

end
