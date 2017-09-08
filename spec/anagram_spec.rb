require 'rspec'
require 'anagram'

describe 'Anagram' do
  let(:subject) { Anagram.new("ruby") }

  it 'has a readable word' do
    expect(subject.word).to eq "ruby"
  end
end
