class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

end
