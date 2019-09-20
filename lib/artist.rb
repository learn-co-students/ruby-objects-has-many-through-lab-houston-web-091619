class Artist

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select { |i| i.artist == self }
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        array = []
        Song.all.each do |i|
            array << i.genre if i.artist == self
        end
        array
    end

end
