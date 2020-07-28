require 'pry'
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
    name = Song.new
    name.save
    name
  end
  
  def self.new_by_name(name)
    song = Song.new
    song.name = name
    song
  end

end
