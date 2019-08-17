class PigLatinizer
  attr_reader :text

  def initiallize(text)
    @words = text.lowercase.split(" ")
  end

  def pig_latinize
    @words.each do |word|
      consonant = ""
      word.split("").each do |c|
        if c.match(/[bcdfghjklmnpqrstvwxyz]/)
          consonant += c
      end
    end
  end

end
