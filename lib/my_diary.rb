class MyDiary
  def initialize
    @chapters = []
  end

  def add(entry) 
    @chapters << entry
  end

  def all
    return @chapters
  end

  def count_words 
    @chapters.sum(&:count_words) # => it iterates through each chapter from MyDiaryEntry 
                                  #and calls the method count_words from that class what counts only the words from content
  end

  def reading_time(wpm) 
    fail "wpm must be positive" unless wpm.positive?
    (count_words / wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    readable_chapters = @chapters.filter do |chapter|
      chapter.reading_time(wpm) <= minutes
    end
    readable_chapters.max_by do |chapter|
      chapter.count_words
    end
  end
end