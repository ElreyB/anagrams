require_relative 'lib/anagram'

puts "What is your first word"
first_word = gets.chomp

puts "What is your second word"
second_word = gets.chomp

first_word = Anagram.new(first_word)
second_word = Anagram.new(second_word)

if first_word.anagram_of(second_word)
  puts "These words are anagrams."
else
  puts "These words are not anagrams"
end

if Palindrome.palindrome?(first_word.word) && Palindrome.palindrome?(second_word.word)
  puts "These words are palindromes."
else
  puts "One or both of these words are not palindromes."
end
