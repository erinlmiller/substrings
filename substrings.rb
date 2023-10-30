def substrings(word, dictionary)
  result = Hash.new(0)
  lowercase_word = word.downcase
  dictionary.each do |word|
    matches = lowercase_word.scan(word).length
    result[word] = matches unless matches == 0
  end
  return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
