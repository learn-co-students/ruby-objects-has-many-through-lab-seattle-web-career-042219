require 'pry'
class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs

    Song.all.select do |song|
        # binding.pry
      song.genre == self
      #binding.pry
    end
  end

  def self.all
    @@all
  end

  def artists
    Song.all.map do |song|
      if song.genre == self
        song.artist
      end
    end.flatten
  end


end
