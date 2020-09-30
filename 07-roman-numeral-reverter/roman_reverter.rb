VALUES = {I: 1, V: 5, X: 10, L: 50, C: 100, D: 500, M: 1000}

class Roman

  def self.reverter(string)
    match_set = VALUES.keys.flatten.reverse

    return ArgumentError, "#{string} contains invalid character(s); cannot translate to Arabic representation." if !string.match?(/#{match_set}/i)

    parsed_string = string.chars

    sum = parsed_string.sum { |char| VALUES[char.to_sym] }
    subtract = calc_subtract_num(string)
    return sum - subtract
  end

  private

  def self.calc_subtract_num(string)
    subtract = 0
    subtract += 2 if string.match?(/[i][vxlcdm]/i)
    subtract += 10 if string.match?(/[v][xlcdm]/i)
    subtract += 20 if string.match?(/[x][lcdm]/i)
    subtract += 100 if string.match?(/[l][cdm]/i)
    subtract += 200 if string.match?(/[c][lm]/i)
    subtract += 1000 if string.match?(/[d][m]/i)
    return subtract
  end

end