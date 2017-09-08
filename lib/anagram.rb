require_relative 'palindrome'
class Anagram
  include Palindrome
  attr_reader :word
  class NotAWordError < StandardError
  end

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

  def is_a_word
    if self.word =~ /[aeiouy]/i
      return true
    end
    raise NotAWordError, "You need to input actual words!"
  end

  def antigram(possible_antigram)
    for i in 0..self.word.length
      if self.word[i] != possible_antigram[i]
        return "These words have no letter matches and are antigrams."
      end
    end
    false
  end

private
  def alphabetically_sorted
    letters = @word.delete(" '?!:;.\"")
    letters.downcase.split("").sort.join
  end



end
