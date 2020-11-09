class Artist

  @@song_count = 0

  attr_accessor :name, :song


  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    @songs << song
    song.artist = self
    @@soung_count += 1
  end


end
