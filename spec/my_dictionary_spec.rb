require 'rspec'
require 'my_dictionary'

describe 'MyDictionary' do
# to test private method 
  # describe '#list_of_words' do
  #   it 'will be an array' do
  #     expect(MyDictionary.list_of_words).to be_an Array
  #   end
  # end

  describe 'exists?' do
    it 'returns true when word is on the list' do

      expect(MyDictionary.exists?("Bob")).to eq true
    end

    it 'returns false when word is not on the list' do
      expect(MyDictionary.exists?("cccc")).to eq false
    end
  end
end
