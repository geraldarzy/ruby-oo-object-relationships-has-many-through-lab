require 'pry'

class Artist
    attr_accessor :name
    attr_reader
    @@all = []
    
    def initialize(name)
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
        Song.all.select{|x|x.artist==self}
    end

    def new_song(title,genre)
        Song.new(title,self,genre)
        
    end
    def genres
        songs.map {|x|x.genre}
    end

    
    

    

    

    


end
