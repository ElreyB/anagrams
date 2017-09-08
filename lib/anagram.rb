class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def alphabetical_form
    @alphabetical_form ||= alphabetically_sorted
  end

  def alphabetically_sorted
    word.split("").sort.join
  end


end
