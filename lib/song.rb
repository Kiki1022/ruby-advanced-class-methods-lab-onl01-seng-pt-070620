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


  def self.create_by_name(name)
    song = Song.new
    song.name = name
    song.save
    song
  end
  
  def self.find_by_name(name)
    @@all.find{|song| song.name == name} 
  end
  
  def self.find_or_create_by_name(name)
    if song.find_by_name.includes?name 
    else song.create_by_name
    end
  end

end
