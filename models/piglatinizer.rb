class PigLatinizer
  attr_reader :text

  def initiallize(text)
    @text = text
  end

  def piglatinize(text)
    text.split(" ").collect do |word|
      consonant_check = false
      word.downcase.split("").each do |c|
        if c.match(/[bcdfghjklmnpqrstvwxyz]/)
          word += word[0]
          word.slice!(0)
          consonant_check = true
        elsif c.match(/[aeiou]/)
          word += 'w' if !consonant_check
          word += 'ay'
          break
        end
      word
      end
    end
  end

end
