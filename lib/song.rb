class Song
  attr_accessor :name, :artist, :genre

  def initialize(name)
    @name = name
    @@all << self
    save
  end


  def save
    @@all < self
  def self.all
    @@all
  end

  def artist_name

  end
end
