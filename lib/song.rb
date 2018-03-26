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

  def self.alphabetical
    @@all.sort do |a,b|
      if a.name == b.name
        0
      elsif a.name > b.name
        1
      else
        -1
      end
    end
  end

  def self.new_from_filename(file)
    properties = file.split('-')
    song = new_by_name(properties[1].strip().sub(/.mp3/,''))
    song.artist_name = properties[0].strip()
    song
  end

def self.create_from_filename(file)
  song = new_from_filename(file)
  @@all << song
end

  def self.destroy_all
    @@all = []
  end


  def save
    self.class.all << self
  end

end
