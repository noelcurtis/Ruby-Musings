require 'rspec'
require 'word_counter.rb'

describe "Count Words" do

  it "Should be able to count words in a file" do
    words = WordCounter.count_words("../test_files/text_file.txt")
    words.count.should eql(8)
  end

end