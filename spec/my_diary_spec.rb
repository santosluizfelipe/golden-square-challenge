require_relative '../lib/my_diary'

describe MyDiary do 
  it "initializes w/ an empty array" do 
    my_diary = MyDiary.new 
    expect(my_diary.all).to eq []
  end

  it "should return the added value to its array" do 
    my_diary = MyDiary.new
    my_diary.add("random value")
    expect(my_diary.all).to eq ["random value"]
  end

  it "should return the amount of words inside its value" do 
    my_diary = MyDiary.new
    expect(my_diary.count_words).to eq 0
  end

  it "has a reading time of 0" do 
    my_diary = MyDiary.new 
    expect(my_diary.reading_time(2)).to eq 0
  end

  it "has a reading time of 0" do 
    my_diary = MyDiary.new 
    expect(my_diary.find_best_entry_for_reading_time(2, 1)).to eq nil
  end
end