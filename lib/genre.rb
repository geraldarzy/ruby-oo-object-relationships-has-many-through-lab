require 'pry'

class Genre
    attr_accessor :genre, :name, :songs
    attr_reader

        @@all = []

        
    def initialize(name)
        @songs = []
        @name = name
        save

    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|x| x.genre == self}
    end

    def artists
        songs.map {|x| x.artist}
    end


end
