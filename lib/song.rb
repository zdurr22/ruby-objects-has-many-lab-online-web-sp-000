class Song
  attr_accessor :name, :artist, :genre


  @@song_count = 0
  
  def initialize(name)
    @name = name
    @songs = []
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


end
