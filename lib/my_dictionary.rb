module MyDictionary

  def self.exists?(word)
    MyDictionary.list_of_words.include?(word)
  end

private
  def self.list_of_words
    words = []
    File.open('words.txt', 'r') do |file|
      while file_line = file.gets
        words.push(file_line.delete("\n"))
      end
    end
    words.sort
  end

end
