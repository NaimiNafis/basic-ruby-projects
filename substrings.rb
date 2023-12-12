require 'pry-byebug'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(input_string, dictionary)

  string = input_string.downcase.split(" ")

  dictionary.reduce(Hash.new(0)) do |result, word|
    string.each do |match|
      if match.include?(word)
        result[word] += 1
      end
    end
    result
  end
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)


# 'below'.include?('low') => true
# so string[i].include?(dictionary[j]) => true
