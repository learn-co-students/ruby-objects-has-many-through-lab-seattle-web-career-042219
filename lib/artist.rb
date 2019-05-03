class Artist
	attr_accessor :name, :genre

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def new_song(name,genre)
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


end


# Artist
#   #new_song
#     given a name and genre, creates a new song associated with that artist (FAILED - 3)
#   #songs
#     has many songs (FAILED - 4)
#   #genres
#     has many genres, through songs (FAILED - 5)
