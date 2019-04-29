require "pry"

class Artist

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select { |song_instance| song_instance.artist == self }
  end

  def genres
    self.songs.map do |song|
      song.genre
    end
  end


end
