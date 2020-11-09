class Artist

  attr_accessor :name, :song


  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end



end
