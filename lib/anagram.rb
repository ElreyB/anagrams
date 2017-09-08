class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def alphabetical_form
    @alphabetical_form ||= alphabetically_sorted
  end

  def anagram_of(possible_anagram)
    if self.alphabetical_form == possible_anagram.alphabetical_form
      return "These words are anagrams."
    end
      "These words are not anagrams"
  end

private
  def alphabetically_sorted
    word.downcase.split("").sort.join
  end


end
