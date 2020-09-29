VALUES = {I: 1, V: 5, X: 10, L: 50, C: 100, D: 500, M: 1000}

class Roman

  def self.reverter(string)
    match_set = VALUES.keys.flatten

    return ArgumentError, "#{string} contains invalid character(s); cannot translate to Arabic representation." if !string.match?(/#{match_set}/i)

    parsed_string = string.chars
    sum = parsed_string.sum { |char| VALUES[char.to_sym] }

    if string.match?(/#{match_set.reverse}/)
      index = string =~ /#{match_set.reverse}/i
      subtract = VALUES[parsed_string[index].to_sym] * 2
    end

    return sum - subtract
  end

end