class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def piglatinize_word(word) (/[aeiou]/)
    vowels = %w(a e i o u A E I O U)
    consonants = []
    if vowels.include?(word[0])
      word + "way"
    else
      letters = word.split('') # splits word into individual letters
      until vowels.include?(letters[0])
        consonants << letters[0]
        letters.shift
      end
      @piglatin = letters + consonants << "ay"
    end
    @piglatin.join
  end

  def piglatinize
    words = @text.split(" ")
    piglatin = words.map {|word| piglatinize_word(word)}
    piglatin.join(" ")
  end

end
