class PigLatinizer
  attr_reader :text

  def initiallize(text)
    @text = text.lowercase
  end
end
