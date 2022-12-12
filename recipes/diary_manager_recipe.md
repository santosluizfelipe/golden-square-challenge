# Diary Manager

# 1. describe the problem
 make a program using 2 class, Diary and DiaryEntry where diary reoresents a note and the diaryentry represents
  each chapter containing a title and a content where they are both strings 

# 2. Design the methods

```ruby
# --------------- the class what represents the note
class Diary
  def initialize
  end

  def add(entry) # entry is an instance of DiaryEntry
    # Returns nothing
  end

  def all
    # Returns a list of instances of DiaryEntry
  end

  def count_words
    # Returns the number of words in all diary entries
    # HINT: This method should make use of the `count_words` method on DiaryEntry.
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # if the user were to read all entries in the diary.
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.
  end
end

# --------------- the class what represents the chapters
class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    # ...
  end

  def title
    # Returns the title as a string
  end

  def contents
    # Returns the contents as a string
  end

  def count_words
    # Returns the number of words in the contents as an integer
  end

  def reading_time(wpm) # wpm is an integer representing
                        # the number of words the user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
  end
end
```


# 3. the expected outputs
```ruby
  # test1
  diary_manager = Diary.new # => initializes with an empty array
  diary_manager.all # => [] 

  #test2
  diary = Diary.new 
  diary_chapter1  = DiaryEntry.new("today1", "hello world1") # initializes with an array with those 2 strings passed to the method
  diary.add(diary_chapter)
  diary.all # => [diary_chapter]


  #test3
  diary = Diary.new 
  diary_chapter1  = DiaryEntry.new("today1", "hello world1") 
  diary_chapter2  = DiaryEntry.new("today2", "hello world2")
  diary.add(diary_chapter1)
  diary.add(diary_chapter2)
  diary.count_words # => 4 (integer that represents the total amount of words in all contents in DiaryEntry)

  #test4
  diary = Diary.new 
  diary_chapter1  = DiaryEntry.new("today1", "hello world1") 
  diary_chapter2  = DiaryEntry.new("today2", "hello world2")
  diary.add(diary_chapter1)
  diary.add(diary_chapter2)
  diary.reading_time(wpm) # =>  10 (returns integer what represents the total of minutes the user needs to read all content from DiaryEntry)

  #test5
  diary = Diary.new 
  diary_chapter1  = DiaryEntry.new("today1", "hello world1") 
  diary_chapter2  = DiaryEntry.new("today2", "hello world2")
  diary.add(diary_chapter1)
  diary.add(diary_chapter2)
  diary.find_best_entry_for_reading_time(wpm, minutes) # => diary_chapter2 (returns the instance the user can read based on the wpm and amount of min the user has )
```
