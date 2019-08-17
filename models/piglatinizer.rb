class PigLatinizer
  attr_reader :words

  def initiallize(text)
    @words = text.lowercase.split(" ")
  end

  def piglatinize(word)
    consonant_check = false
    word.each do |c|
      if c.match(/[bcdfghjklmnpqrstvwxyz]/)
        word += word[0]
        word.slice!(0)

      elsif c.match(/[aeiou]/)

        break
      end
    end
  end

end
