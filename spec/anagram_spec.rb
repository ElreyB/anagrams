require 'rspec'
require 'anagram'

describe 'Anagram' do
  let(:subject) { Anagram.new("ruby") }

  it 'has a readable word' do
    expect(subject.word).to eq "ruby"
  end

  describe '#alphabetical_form' do
    it 'returns the word sorted alphabetically' do
      expect(subject.alphabetical_form).to eq "bruy"
    end
  end
end
