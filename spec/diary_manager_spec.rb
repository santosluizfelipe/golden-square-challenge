require "diary_manager"

describe "integration" do
  it "constructs" do
    diary = Diary.new
    expect(diary.all).to eq []
  end
end

describe Diary do
  it "add a diary chapter to the diary" do  
    diary = Diary.new
    diary_chapter  = DiaryEntry.new("today", "hello world")
    diary.add(diary_chapter)
    expect(diary.all).to eq [diary_chapter]
  end
end

describe DiaryEntry do
  it "constructs" do
    chapter = DiaryEntry.new("today", "hello world")
    expect(chapter.title).to eq "today"
    expect(chapter.contents).to eq "hello world"
  end
end