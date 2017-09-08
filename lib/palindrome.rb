module Palindrome

  def self.palindrome?(word)
    word = word.downcase
    mid_point = word.length/2
    for i in 0..mid_point
      return word[i] == word[-1-i]
    end
    false
  end

end
