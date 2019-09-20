class Genre

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
        Song.all.select { |i| i.genre == self }
    end

    def artists
        array = []
        Song.all.each do |i|
            array << i.artist if i.genre == self
        end
        array
    end

end