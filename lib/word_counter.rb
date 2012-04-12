module RubyMusings

  class WordWrapper
    include Comparable
    attr_accessor :word, :count

    def <=>(an_other)
       an_other.count <=> self.count
    end
  end

  class WordCounter

    def self.count_words(file_name)
      word_hash = Hash.new

      file = File.open(file_name, "r")
      while (line = file.gets)

        line.scan(/\w+/).each do |word|
          word.downcase!
          if word_hash.has_key? word
            word_hash[word].count += 1
          else
            new_word = WordWrapper.new
            new_word.word = word
            new_word.count = 1
            word_hash[word] = new_word
          end
        end
      end

      all_words = word_hash.values
      all_words.sort!
    end

  end

end