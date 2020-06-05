require 'pry'
class Song
  #when collecting and counting we need our class variables to store info in
  @@count = 0 
  @@artists = [] 
  @@genres = []
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    # since our @@'s are empty we need a way to store the genre and artist in them
    @@artists << artist
    @@genres << genre
    #here we use the shovel method to shovel our initialized artist/genre (they are the existing song variables)
      #  binding.pry
  end

  def self.count
    @@count
  end
# we need to make sure there are not duplicates of artist and genre using .uniq method
  def self.artists 
    @@artists.uniq
  #  binding.pry
  end

  def self.genres
    @@genres.uniq

  end

  def self.genre_count
    # we need to create a hash
    genre_hash = {}
     #we need to iterate through to see if pair exist
     @@genres.each do |music| 
        # You will need to check to see if the hash already contains a key of a particular genre.
        # if so increment the value at key by 1 
      if genre_hash[music] 
        genre_hash[music] += 1
      else
        # otherwise, must create new key'value pair
        genre_hash[music] = 1
      end
    end
      genre_hash
    #  binding.pry
  end

  def self.artist_count
    # we need to create a hash
    artist_hash = {}
     #we need to iterate through to see if pair exist
     @@artists.each do |music| 
        # You will need to check to see if the hash already contains a key of a particular genre.
        # if so increment the value at key by 1 
      if artist_hash[music] 
        artist_hash[music] += 1
      else
        # otherwise, must create new key'value pair
        artist_hash[music] = 1
      end
    end
      artist_hash
  end
end