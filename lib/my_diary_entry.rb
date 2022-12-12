class MyDiaryEntry
  def initialize(title, contents) 
    @title = title
    @contents = contents
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    return 0 if @contents.empty?
    @contents.split(" ").size
  end

  def reading_time(wpm) 
    fail "wpm must be positive" unless wpm.positive?
    (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes) 

  end
end