class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    x = Song.new
    @@all << x
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
