class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    x = Song.new
    @@all << x
    x
  end

  def self.all
    @@all
  end

  def self.new_by_name(name)
    x = Song.new
    x.name = name
    @all << x
    x
  end

  def save
    self.class.all << self
  end

end
