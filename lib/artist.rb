require 'pry'
class Artist

  @@song_count = 0


  attr_accessor :name, :songs, :artist


  def initialize(name)
    @name = name
  end

  def add_song(song)
    Song.all << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    Song.all << song
    song.artist = self
  end

  def self.song_count
    Song.all.count
  end

  def songs
    Song.all
  end

end
