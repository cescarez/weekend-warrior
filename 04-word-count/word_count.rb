def words(sentence)
  words_array = sentence.split(' ')
  words_hash = Hash.new(0)

  words_array.each do |word|
    words_hash[word.downcase] += 1
  end

  return words_hash
end
