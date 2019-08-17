class PigLatinizer
  attr_reader :text

  def initiallize(text)
    @text = text.lowercase.split(" ")
  end


end
