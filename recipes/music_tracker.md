# 1. describe the problem 
  As a user
  So that I can keep track of my music listening
  I want to add tracks I've listened to and see a list of them.

# 2. design the class interface
```ruby
  class MusicTracker 
    def initialize
      # the class gonaa initialize with an empty array
    end

    def add_music(song) # song will be a string what represents 1 song
      # this method will add a new music to the array of musics
    end

    def list_musics 
      # this method will print all the musics inside the playlist
    end

    def delete_music(song) # song is a string what represents the song the user wants to delete
      #this method will delete the music the user doesn't want to listen anymore
      #it fails if is passed a song that is not inside the playlist "No such song in your playlist"
    end
  end
  ```

# 3. Create examples as tests

```ruby
# test1
music_tracker = MusicTracker.new # => creates an empty array []
music_tracker.list # => []

# test2
music_tracker = MusicTracker.new 
music_tracker.add("baby one more time")
music_tracker.list # => ["baby one more time"]

# test3
music_tracker = MusicTracker.new 
music_tracker.add("baby one more time")
music_tracker.add("Lose yourself")
music_tracker.list # => ["baby one more time", "Lose yourself"]

# test4
music_tracker = MusicTracker.new 
music_tracker.add("baby one more time")
music_tracker.add("Lose yourself")
music_tracker.delete_music("Lose yourself")
music_tracker.list # => ["baby one more time"]

# test5
music_tracker = MusicTracker.new 
music_tracker.add("baby one more time")
music_tracker.add("Lose yourself")
music_tracker.delete_music("I will survive") # => fail "No such song in your playlist
```
  