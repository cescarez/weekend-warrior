class Hamming

  def self.compute(string1, string2)
    raise ArgumentError, "Strings are not the same length and are not comparable." if string1.length != string2.length

    diff_count = 0
    string1.chars.each_with_index do |char1, index|
      if char1 != string2[index]
        diff_count += 1
      end
    end
    return diff_count
  end
end