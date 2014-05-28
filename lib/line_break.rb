class LineBreak
  def initialize(text_to_break)
    @text = text_to_break
  end

  def break_by(text_length)
    array_of_words = @text.split(" ")
    remaining_space = text_length
    results = ""

    array_of_words.each do |word|
      word_length = word.length
      if remaining_space > 0 && remaining_space-word_length > 0
        results << word + " "
        remaining_space = remaining_space - word_length
      else
        results << "\n"
        results << word
        results << " "
        remaining_space = text_length - word_length
      end
    end
    results.rstrip
    lines = results.split("\n")
    ans = []
    lines.each do |line|
      ans << line.rstrip + "\n"
    end
    ans.join
  end
end