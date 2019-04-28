require 'pry'
class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@all << self

  end

  def self.all
    @@all
  end

  def genre
    @genre
  end



end
