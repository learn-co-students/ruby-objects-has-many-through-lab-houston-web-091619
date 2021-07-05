class Song
  attr_accessor :name, :genre, :artist

  def initialize(name, genre, artist)
    @name = name
    @genre = genre
    @artist = name
    genre.add_song(self)
  end
end