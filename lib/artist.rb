require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    Song.all.map do |song|
      if song.artist == self
        song.genre
      end
    end
  end


  def new_song(name, genre)
    Song.new(name, self, genre)
    # binding.pry
  end


end
