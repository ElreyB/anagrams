require 'rspec'
require 'anagram'

describe 'Anagram' do
  let(:word1) { Anagram.new("ruby") }

  it 'has a readable word' do
    expect(word1.word).to eq "ruby"
  end

  describe '#alphabetical_form' do
    it 'returns the word sorted alphabetically' do
      expect(word1.alphabetical_form).to eq "bruy"
    end
  end

  describe 'identifying an anagram' do
    it 'returns confirm phrase if alphabetical forms are equal' do
      word2 = Anagram.new("bruy")
      expect(word1.anagram_of(word2)).to eq "These words are anagrams."
    end

    it 'returns disconfirm phrase if alphabetical forms are not equal' do
      word2 = Anagram.new("snow")
      expect(word1.anagram_of(word2)).to eq "These words are not anagrams"
    end

    it 'returns confirm phrase if alphabetical forms are equal with different cases' do
      word2 = Anagram.new("Eat")
      word3 = Anagram.new("Tea")
      expect(word2.anagram_of(word3)).to eq "These words are anagrams."
    end

    it 'returns confirm phrase if alphabetical forms are equal when a phrase has spaces' do
      phrase1 = Anagram.new("Clint Eastwood")
      phrase2 = Anagram.new("Old West Action")
      expect(phrase1.anagram_of(phrase2)).to eq "These words are anagrams."
    end

    it 'returns confirm phrase if alphabetical forms are equal when a phrase has qoutation marks' do
      phrase1 = Anagram.new("Slot Machines")
      phrase2 = Anagram.new("Cash lost in 'em")
      expect(phrase1.anagram_of(phrase2)).to eq "These words are anagrams."
    end

    it 'returns confirm phrase if alphabetical forms are equal when a phrase has punctuations' do
      phrase1 = Anagram.new("Heavy Rain?")
      phrase2 = Anagram.new("Hire a navy!")
      expect(phrase1.anagram_of(phrase2)).to eq "These words are anagrams."
    end

  end
end
