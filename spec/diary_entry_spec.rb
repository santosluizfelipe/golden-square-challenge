require_relative '../lib/diary_entry'

describe 'diary_entry' do
  entry = Array.new(200, "bananas").join(" ")

  diary_entry = DiaryEntry.new('Peter Pan', entry)

  it 'should return the title of the entry' do
    expect(diary_entry.title).to eq 'Peter Pan'
  end
  
  it 'should return the contents of the entry' do
    expect(diary_entry.contents).to eq entry
  end

  it 'should return the number of words in the contents as a integer' do
    expect(diary_entry.count_words).to eq 200
  end

  it 'should return the time estimated to read the contents given a wpm reading rate' do
    expect(diary_entry.reading_time(200)).to eq 1
  end
  
  it 'should return the amount of words the user can read in a given number of minutes' do
    expect(diary_entry.reading_chunk(200, 1)).to eq entry
  end
end
