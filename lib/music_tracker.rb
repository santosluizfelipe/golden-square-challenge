class MusicTracker
  def initialize
    @songs = []
  end

  def list
    return @songs
  end

  def add(song)
    @songs << song
  end

  def delete_music(song) 
    fail "No such song in your playlist" unless @songs.include? song
    @songs.delete(song)
  end
end