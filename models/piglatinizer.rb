class PigLatinizer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def piglatinize_word(word)
    letter = word[0].downcase # "word" 
    if letter.start_with?(/[aeiou]/) # if "word" doesn't start with a vowel, "wordway"
      "#{word}way"
    else
      constonants = [] # save constonant to add from letters array 
      # iterate through array of letters, adding to constanants if not a vowel
      letters.each do |letter|
        until letter.start_with?(/[aeiou]/)
          constonants << letter
        end
        binding.pry 
      end 
    end 
  end 
    

  end

  def piglatinize
    words = @text.split(" ")
    piglatin = words.map {|word| piglatinize_word(word)}
    piglatin.join(" ")
  end

end

