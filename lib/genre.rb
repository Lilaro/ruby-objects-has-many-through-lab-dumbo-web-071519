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
# doesn't need an argument input
# returning songs of a specific genre 
     def songs
         Song.all.select do |song|
             song.genre == self
         end
    end
# find the artist of each song based off the genre selected
     def artists
         songs.map do |song| 
             song.artist
         end
     end



end