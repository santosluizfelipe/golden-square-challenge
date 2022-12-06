require 'reading_time'

describe do 
  it "returns the ammount of time the user takes to read the string passed to it" do 
    expect(reading_time(200)).to eq "it will take you an 1 minute to read this"
  end
end