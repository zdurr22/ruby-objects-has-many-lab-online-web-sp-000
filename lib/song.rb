class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
    save
  end


  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist.name == nil
      return nil
    else
      self.artist.name
    end
  end


    def add_song(song)
      @songs << song
      song.artist = self
      @@song_count += 1
    end

    def self.song_count
      @@song_count
    end
end
