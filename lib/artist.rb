require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all<< self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    artist_songs_array
  end

  def artist_songs_array
    Song.all.select {|song| song.artist ==self}
  end

  def genres
    artist_songs_array.map{|song| song.genre}
  end

end
0
