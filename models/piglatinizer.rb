class PigLatinizer
  attr_reader :words

  def initiallize(text)
    @words = text.lowercase.split(" ")
  end

  def piglatinize(word)
    output = word
    word.split("").each do |c|
      if c.match(/[bcdfghjklmnpqrstvwxyz]/)

      elsif c.match(/[aeiou]/)
        break
      end
    end
  end

end
