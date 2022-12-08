require_relative "../lib/music_tracker"

describe MusicTracker do 
  it "after initialize the list method returns an empty array" do 
    music_tracker = MusicTracker.new 
    expect(music_tracker.list).to eq []
  end

  it "the add method should ad 1 song to the songs array" do 
    music_tracker = MusicTracker.new
    music_tracker.add("baby one more time")
    expect(music_tracker.list).to eq ["baby one more time"]
  end

  it "should keep adding songs to the array" do 
    music_tracker = MusicTracker.new
    music_tracker.add("baby one more time")
    music_tracker.add("Lose yourself")
   expect(music_tracker.list).to eq ["baby one more time", "Lose yourself"]
  end

  it "it should delete 1 song from the array" do 
    music_tracker = MusicTracker.new
    music_tracker.add("baby one more time")
    music_tracker.add("Lose yourself")
    music_tracker.delete_music("Lose yourself")
    expect(music_tracker.list).to eq ["baby one more time"]
  end

  it "Should fail if the user tries to delete a nonexistent song" do 
    music_tracker = MusicTracker.new
    music_tracker.add("baby one more time")
    music_tracker.add("Lose yourself")
    expect{ music_tracker.delete_music("I will survive") }.to raise_error "No such song in your playlist"
  end
end