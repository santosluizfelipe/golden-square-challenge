require 'diary_size'

describe do 
  it "returns 5 words and extra 3 dots in case there is more words" do 
    str = "I'm having a wonderful day at makers".split(" ")
    result = str[0..4].join(" ") + "..."
    expect(make_snippet(result)).to eq "I'm having a wonderful day..."
  end

  it "returns the number of words on the passed string" do 
    str = "hello maker students"
    expect(count_words(str)).to eq 3
  end
end

