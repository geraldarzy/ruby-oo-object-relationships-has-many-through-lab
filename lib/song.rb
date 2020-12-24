

require 'pry'

class Song
    attr_accessor :name, :artist, :genre
    attr_reader

    @@all=[]

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        save

    end

    def save
        self.class.all << self
    end

    def self.all
        @@all
    end


end
