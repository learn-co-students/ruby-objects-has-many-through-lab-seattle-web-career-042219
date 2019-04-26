require "pry"

class Artist

    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name)
        @name = name
        @artist = artist
        @genre = genre

        @@all << self
    end

    def new_song(name, genre)
       Song.new(name, self, genre)
    end

    def songs
       Song.all.select do |song|
            song.artist == self
       end
    end

    def genres
        songs.map do |song|
            song.genre
        end
    end

    def self.all
        @@all
    end

end