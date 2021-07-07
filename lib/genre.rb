
class Genre

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
    Song.all.select do |s|
      s.genre == self
    end
  end

  def artists
    self.songs.map do |s|
      s.artist
    end
  end
end
