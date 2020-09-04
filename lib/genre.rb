class Genre
	attr_accessor :artists
	attr_reader :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def songs
		Song.all.select do |song|
			song.genre == self
		end
	end

	def artists
		Song.all.map do |song|
			song.genre == self ? song.artist : nil
		end
	end

	def self.all
		@@all
	end
end