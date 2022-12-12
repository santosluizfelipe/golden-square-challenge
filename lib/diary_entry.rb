class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @start_point = 0
  end

  attr_reader :title, :contents

  def count_words
    @contents.split(' ').count
  end

  def reading_time(wpm)
    @contents.split(" ").length / wpm
  end

  def reading_chunk(wpm, minutes)
    end_point = @start_point + wpm / minutes
    contents_array = @contents.split(" ")
    string = contents_array[@start_point...end_point].join(" ")
    @start_point = end_point
    @start_point = 0 if @start_point >= @contents.split(" ").length
    return string
  end
end

entry = Array.new(200, "bananas").join(" ")
diary_entry = DiaryEntry.new('Peter Pan', entry)
