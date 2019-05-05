require 'pry'

class Genre

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
     Song.all.select do |song_object|
  
      song_object.genre == self
     end
   end

  def artists
    songs.collect do |song_object|
      song_object.artist
    end
  end

end
