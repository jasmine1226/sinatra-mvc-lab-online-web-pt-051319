class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text.lowercase
end
