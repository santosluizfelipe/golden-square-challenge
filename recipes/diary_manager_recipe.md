# Diary Manager

```ruby
  # test1
  diary_manager = Diary.new
  diary_manager.all # => []

  #test2
  diary = Diary.new
  diary_chapter  = DiaryEntry.new("today", "hello world")
  diary.add(diary_chapter)
  diary.all # => [diary_chapter]

  #test3

```
