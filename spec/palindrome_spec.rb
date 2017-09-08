require('rspec')
require('palindrome')

describe '#palindrome?' do
  it 'returns true for empty string' do
    expect(Palindrome.palindrome?("")).to eq true
  end

  it 'returns true for any single character' do
    expect(Palindrome.palindrome?("t")).to eq true
  end

  it 'returns  false for a multi character word, where the letters are not the same backward and forward' do
    expect(Palindrome.palindrome?("palindrom")).to eq false
  end

  it 'returns true  for a multi character word, where the letters are the same backward and forward' do
    expect(Palindrome.palindrome?("tacocat")).to eq true
  end

  it 'returns true  for a multi character word, where the letters are the same backward and forward, regardless of capitalization' do
    expect(Palindrome.palindrome?("TacOcat")).to eq true
  end

  it 'returns true for any single character' do
    expect(Palindrome.palindrome?("1")).to eq true
  end

  it 'returns true for any single character' do
    expect(Palindrome.palindrome?("2112")).to eq true
  end

  it 'returns true for any single character' do
    expect(Palindrome.palindrome?("3241")).to eq false
  end
end
