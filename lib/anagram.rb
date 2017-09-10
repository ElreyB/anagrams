require_relative 'my_dictionary'
require_relative 'palindrome'

class Anagram
  include Palindrome
  include MyDictionary
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
    if anagram_helper?(possible_anagram)
      return "These words are anagrams."
    end
      "These words are not anagrams"
  end

  def is_a_word
    if MyDictionary.exists?(self.word)
      return true
    end
    raise NotAWordError, "You need to input actual words!"
  end

  def antigram(possible_antigram)
    if antigram_helper?(possible_antigram)
      return "These words have no letter matches and are antigrams."
    end
    antigram_helper?(possible_antigram)
  end

  # def how_many_anagrams
  #   anagram_count = 0
  #   word_list = @word.split(" ")
  #
  #   if self.word =~ /[aeiouy]/i
  #     return true
  #   end
  #   for i in 0..word_list.length-1
  #     if word_lists
  #     for x in 0..@word
  #
  # end

private
  def alphabetically_sorted
    letters = @word.delete(" '?!:;.\"")
    letters.downcase.split("").sort.join
  end

  def anagram_helper?(possible_anagram)
     self.alphabetical_form == possible_anagram.alphabetical_form
  end

  def antigram_helper?(possible_antigram)
    for i in 0..self.word.length
      return self.word[i] != possible_antigram[i]
    end
    false
  end

end
