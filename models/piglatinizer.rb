class PigLatinizer
  attr_reader :words

  def initiallize(text)
    @words = text.lowercase.split(" ")
  end

  def pig_latinize
    consonant = ""
    word.split("").each do |c|
      if c.match(/[bcdfghjklmnpqrstvwxyz]/)
        consonant += c
      elsif c.match(/[aeiou]/)
        break
      end
    end
  end

end
