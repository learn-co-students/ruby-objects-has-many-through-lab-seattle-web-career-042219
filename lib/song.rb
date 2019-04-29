class Song
	attr_reader :name, :artist, :genre

	@@all = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist 
		@genre = genre
		artist.songs << self
		@@all << self
	end

	def self.all
		@@all
	end
end