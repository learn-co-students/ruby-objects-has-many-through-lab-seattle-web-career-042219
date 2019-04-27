require "pry"
class Genre
attr_accessor :name, :artist, :genre
@@all = []
def initialize (name)
  @name = name
  @@all<< self
end
def self.all
  @@all
end
def artists
  array = []
  Song.all.each do |song|
    if song.genre == self
      array<< song.artist
    end
  end
  array
end

def songs
  Song.all.select{|song| song.genre == self}
end
end

0
