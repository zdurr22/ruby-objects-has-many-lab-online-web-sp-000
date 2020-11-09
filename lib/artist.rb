class Artist

  @@all = []

  attr_accessor :name, :song


  def initialize(name)
    @name = name
  end

  def songs
    @@all << self
    @@all
  end

  def add_song(song)
    @song = song
  end


end
