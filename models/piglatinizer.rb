class PigLatinizer
  attr_reader :text

  def initiallize(text)
    @words = text.lowercase.split(" ")
  end


end
