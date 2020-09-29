class Alouette
  SUB_LINES = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]
  def self.lines_for_verse(verse_num)
    lines = []
    SUB_LINES.each_with_index do |sub_line, i|
      if i <= verse_num
        lines << "Et #{sub_line}!"
      end
    end

    return lines.reverse
  end

  def self.verse(verse_num)
    verse = "Je te plumerai #{SUB_LINES[verse_num]}.\n" * 2
    verse_sub_lines = lines_for_verse(verse_num).map { |line| (line + "\n") * 2 }
    verse += verse_sub_lines.join
    verse += "Alouette!\n"*2
    verse += "A-a-a-ah"

    return verse
  end

  def self.sing
    song = refrain
    verse_num = 0
    while verse_num <= 8
      song += "\n"
      song += "\n"
      song += verse(verse_num)
      song += "\n"
      song += "\n"
      song += refrain

      verse_num += 1
    end

    return song
  end

  def self.refrain
    return "Alouette, gentille alouette,\nAlouette, je te plumerai."
  end
end
