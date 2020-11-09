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
      nil
    else
      self.artist.name
    end
  end
end
