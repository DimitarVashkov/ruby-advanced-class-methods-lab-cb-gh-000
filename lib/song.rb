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
    x
  end

  def self.create_by_name(name)
    x = Song.new
    x.name = name
    @@all << x
    x
  end

  def self.find_by_name(name)
    @@all.detect {|x| x.name == name}
  end

  def self.find_or_create_by_name(name)
    result = find_by_name(name)
    if result
      result
    else
      result = create_by_name(name)
    end

  end




  def save
    self.class.all << self
  end

end
