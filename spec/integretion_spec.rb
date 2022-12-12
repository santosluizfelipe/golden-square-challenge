require_relative '../lib/my_diary_entry'
require_relative '../lib/my_diary'

describe "integretion between diary classes" do

  describe "initialize behavior" do 
    it "should return an empty array from MyDiary" do
      my_diary = MyDiary.new 
      expect(my_diary.all).to eq []
    end

    it "should return an array from MyDiary of all instances of My_Diary_entry " do
      my_diary = MyDiary.new 
      my_diary_entry1 = MyDiaryEntry.new("title1", "content1")
      my_diary_entry2 = MyDiaryEntry.new("title2", "content2")
      my_diary.add(my_diary_entry1)
      my_diary.add(my_diary_entry2)
      expect(my_diary.all).to eq [my_diary_entry1, my_diary_entry2]
    end
  end

  describe "count_words behavior" do
    it "should return an integer what represents the number of all words present in the contents of MyDiaryEntry" do 
      my_diary = MyDiary.new 
      my_diary_entry1 = MyDiaryEntry.new("title1", "content1")
      my_diary_entry2 = MyDiaryEntry.new("title2", "content2")
      my_diary.add(my_diary_entry1)
      my_diary.add(my_diary_entry2)
      expect(my_diary.count_words).to eq 2
    end
    
    it "should return 0 because contents will be empty" do 
      my_diary = MyDiary.new 
      my_diary_entry1 = MyDiaryEntry.new("title1", "")
      my_diary.add(my_diary_entry1)
      expect(my_diary.count_words).to eq 0
    end
  end

  describe "reading time behavior" do
    it "fails where wpm is 0" do 
      my_diary = MyDiary.new 
      my_diary_entry = MyDiaryEntry.new("title", "my content")
      my_diary.add(my_diary_entry)
      expect{ my_diary.reading_time(0) }.to raise_error "wpm must be positive"
    end

    it "calculate the reading time for all entries where it fits exactly" do
      # remember the case where wpm is 0
      my_diary = MyDiary.new 
      my_diary_entry1 = MyDiaryEntry.new("title1", "my content 1")
      my_diary_entry2 = MyDiaryEntry.new("title2", "my content 2")
      my_diary.add(my_diary_entry1)
      my_diary.add(my_diary_entry2)
      expect(my_diary.reading_time(2)).to eq 3
    end

    it "calculate the reading time for all entries where it fails over a minute" do
      # remember the case where wpm is 0
      my_diary = MyDiary.new 
      my_diary_entry1 = MyDiaryEntry.new("title1", "my content")
      my_diary_entry2 = MyDiaryEntry.new("title2", "my content 2")
      my_diary.add(my_diary_entry1)
      my_diary.add(my_diary_entry2)
      expect(my_diary.reading_time(2)).to eq 3
    end
  end

  describe "best reading time entry behavior" do 
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
    context "where we just have one entry and it is readable in the time" do
      it "fails where wpm is 0" do 
        my_diary = MyDiary.new
        my_diary_entry1 = MyDiaryEntry.new("title1", "my content")
        my_diary.add(my_diary_entry1)
        expect{ my_diary.find_best_entry_for_reading_time(0, 1) }.to raise_error("wpm must be positive")
      end

      it "returns that entry" do
        my_diary = MyDiary.new 
        my_diary_entry1 = MyDiaryEntry.new("title1", "my content")
        my_diary.add(my_diary_entry1)
        result = my_diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq my_diary_entry1
      end
    end

    context "where we just have one entry and it is unreadable in the time" do 
      it "returns nil" do 
        my_diary = MyDiary.new 
        my_diary_entry1 = MyDiaryEntry.new("title1", "my content is much longer now")
        my_diary.add(my_diary_entry1)
        result = my_diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq nil
      end
    end

    context "where we have multiple entries" do 
      it " returns the longest entry the user could read in this time" do 
        my_diary = MyDiary.new 
        best_entry = MyDiaryEntry.new("title", "one, two")
        my_diary.add(MyDiaryEntry.new("title", "one"))
        my_diary.add(best_entry)
        my_diary.add(MyDiaryEntry.new("title", "one, two, three"))
        my_diary.add(MyDiaryEntry.new("title", "one, two, three, four"))
        result = my_diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq best_entry
      end
    end
  end
end