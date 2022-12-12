require_relative '../lib/my_diary_entry'

describe "initialize method" do 
  it "it initializes w/ 2 strings title and content" do 
    my_diary_entry = MyDiaryEntry.new("title", "content")
    expect(my_diary_entry.title).to eq "title"
    expect(my_diary_entry.contents).to eq "content"
  end
end

describe "count_words" do
  it "should return a integer that represents all the words in contents" do 
    my_diary_entry = MyDiaryEntry.new("title", "content")
    expect(my_diary_entry.count_words).to eq 1
  end
  
  it "should return 0 if contents is empty" do 
    my_diary_entry = MyDiaryEntry.new("title", " ")
    expect(my_diary_entry.count_words).to eq 0
  end
end

describe "reading time" do
  it "fails if wpm is 0" do 
    my_diary_entry = MyDiaryEntry.new("my_title", "hello world!")
    expect{ my_diary_entry.reading_time(0) }.to raise_error "wpm must be positive"
  end

  it "should return an integer that represents the amount of time in minutes the user takes to read content" do 
    entry = Array.new(200, "bananas").join(" ")
    my_diary_entry = MyDiaryEntry.new("title", entry)
    expect(my_diary_entry.reading_time(100)).to eq 2
  end

  it "should return 0 if the contents is empty" do 
    my_diary_entry = MyDiaryEntry.new("title", " ")
    expect(my_diary_entry.reading_time(100)).to eq 0
  end
end

describe "reading_time" do
  xit "should return a chunk of the content where the user can read given the number of minutes" do 
    entry = Array.new(200, "bananas").join(" ")
    my_diary_entry = MyDiaryEntry.new("title", entry)
    expect(my_diary_entry.reading_chunk(200, 1)).to eq entry
  end
end