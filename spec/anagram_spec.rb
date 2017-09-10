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
    it 'returns true if alphabetical forms are equal' do
      word2 = Anagram.new("bruy")
      expect(word1.anagram_of(word2)).to eq true
    end

    it 'returns false if alphabetical forms are not equal' do
      word2 = Anagram.new("snow")
      expect(word1.anagram_of(word2)).to eq false
    end

    it 'returns true if alphabetical forms are equal with different cases' do
      word2 = Anagram.new("hoes")
      word3 = Anagram.new("shoe")
      expect(word2.anagram_of(word3)).to eq true
    end

    it 'returns true if alphabetical forms are equal when a phrase has spaces' do
      phrase1 = Anagram.new("Clint Eastwood")
      phrase2 = Anagram.new("Old West Action")
      expect(phrase1.anagram_of(phrase2)).to eq true
    end

    it 'returns true if alphabetical forms are equal when a phrase has qoutation marks' do
      phrase1 = Anagram.new("Slot Machines")
      phrase2 = Anagram.new("Cash lost in 'em")
      expect(phrase1.anagram_of(phrase2)).to eq true
    end

    it 'returns true if alphabetical forms are equal when a phrase has punctuations' do
      phrase1 = Anagram.new("Heavy Rain?")
      phrase2 = Anagram.new("Hire a navy!")
      expect(phrase1.anagram_of(phrase2)).to eq true
    end

    describe 'Palindrome' do
      it 'returns true if a palindrome' do
        word1 = Anagram.new("tacocat")
        expect(Palindrome.palindrome?(word1.word)).to eq true
      end

      it 'returns false if it is not a palindrome' do
        word1 = Anagram.new("palindrom")
        expect(Palindrome.palindrome?(word1.word)).to eq false
      end
    end
    #
    # describe '#both_palindromes?' do
    #   it 'returns true if both words are palindromes' do
    #     word1 = Anagram.new("tacocat")
    #     word2 = Anagram.new("bob")
    #     expect(Palindrome.both_palindromes?(word1.word, word2.word)).to eq true
    #   end
    #
    #   it 'returns false if both words are not palindromes' do
    #     word1 = Anagram.new("tacocat")
    #     word2 = Anagram.new("ruby")
    #     expect(Palindrome.both_palindromes?(word1.word, word2.word)).to eq false
    #   end
    # end

    describe '#is_a_word' do
      it 'will raise a NotAWordError' do
        not_word = Anagram.new("kkdjd")
        expect(not_word.is_a_word).to eq false
      end

      it 'will return true' do
        is_word = Anagram.new("bob")
        expect(is_word.is_a_word).to eq true
      end
    end

    describe '#antigram' do
      it 'returns false when word is an anagram' do
        is_word = Anagram.new("bob")
        expect(is_word.antigram("bob")).to eq false
      end

      it 'returns phrase when word is an antigram' do
        is_word = Anagram.new("bob")
        expect(is_word.antigram("kite")).to eq true
      end
    end

    describe '#how_many_anagrams' do
      it 'will give an account of how many anagrams and antigrams there are' do
        word = Anagram.new("hoes")
        expect(word.how_many_anagrams("I took my shoe off and through it at my hoes.")).to eq 2
      end
    end

  end
end
