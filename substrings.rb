require 'pry-byebug'

def substrings(input_string, dictionary)
  input_words = input_string.downcase.split(" ")

  word_count = dictionary.reduce(Hash.new(0)) do |count_hash, dictionary_word|
    input_words.each do |input_word|
      if input_word.include?(dictionary_word)
        count_hash[dictionary_word] += 1
      end
    end
    count_hash
  end
  word_count
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)



# 'below'.include?('low') => true
# so string[i].include?(dictionary[j]) => true
