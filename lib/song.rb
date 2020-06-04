require 'pry'

class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq!
    end

    def self.genres
        @@genres.uniq!
    end

    def self.genre_count
        new_genre = {}
        @@genres.each do |e|
            if new_genre.has_key?(e)
                new_genre[e] += 1
            else
                new_genre[e] = 1
            end
        end
        new_genre
    end

    def self.artist_count
        new_artists = {}
        @@artists.each do |e|
            if new_artists.has_key?(e)
                new_artists[e] += 1
            else
                new_artists[e] = 1
            end
        end
        new_artists
    end
end