class PigLatinizer
  attr_reader :words

  def initiallize(text)
    @words = text.lowercase.split(" ")
  end

  def piglatinize(word)
    consonant_check = false
    word.split("").each do |c|
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
