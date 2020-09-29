class Complement
  RNA_COMPLEMENT = { G: 'C', C: 'G', T: 'A', A: 'U' }

  def self.of_dna(dna_string)
    raise ArgumentError, "Invalid character(s) to generate RNA complement of DNA strand." if dna_string =~ /[^atgc]/i

    rna_string = dna_string.chars.map do |char|
      RNA_COMPLEMENT[char.upcase.to_sym]
    end
    return rna_string.join
  end

  def self.of_rna(rna_string)
    raise ArgumentError, "Invalid character(s) to generate DNA complement of RNA strand." if rna_string =~ /[^augc]/i

    dna_string = rna_string.chars.map do |char|
      RNA_COMPLEMENT.key(char.upcase).to_sym
    end
    return dna_string.join
  end

end