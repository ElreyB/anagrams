module Palindrome

  def self.palindrome?(word)
    word = word.downcase
    mid_point = word.length/2
    for i in 0..mid_point
      return word[i] == word[-1-i]
    end
    false
  end

  def self.both_palindromes?(word1, word2)
    if Palindrome.palindrome?(word1) && Palindrome.palindrome?(word2)
      return "These words are palindromes."
    end
    "One or both of these words are not palindromes."
  end

end
