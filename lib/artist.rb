require 'pry'

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    #binding.pry
  end

  def self.all
   @@all
    #binding.pry
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

 def songs
    Song.all.select do |song_object|
     song_object.artist == self
    end
  end

  def genres
    songs.collect do |song_object|
      song_object.genre
    end
  end
end
