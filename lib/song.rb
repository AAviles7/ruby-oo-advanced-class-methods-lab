class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    @@all.push(self)
    return self
  end

  def self.new_by_name(name)
    @name = name
  end

  def self.create_by_name(name)
    @name = name
    @@all.push(self)
  end

  def self.find_by_name(name)
    @@all.find{|song| (song.name == name)}
  end

  def self.find_or_create_by_name(name)
    x = 0
    @@all.length.times do
      if @@all[x].name == name
        return @@all[x]
      end
      x += 1
    end
    @name = name
    @@all.push(self)
  end

  def self.alphabetical
    @@all.sort_by {|songs| songs.name}
  end

  def self.new_from_filename
    @@all
  end

  def self.create_from_filename
    @@all
  end

  def self.destroy_all
    @@all = []
  end


end
