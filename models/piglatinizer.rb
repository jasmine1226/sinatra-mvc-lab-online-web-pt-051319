class PigLatinizer
  attr_reader :text

  def initiallize(text)
    @words = text.lowercase.split(" ")
  end

  def pig_latinize
    @words.each do |word|

    end
  end

end
