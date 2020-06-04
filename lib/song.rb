class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@count += 1
        @@genres << genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.counter(category)
        count_hash = {}
        category.each do |cat|
            if count_hash[cat]
                count_hash[cat] += 1
            else
                count_hash[cat] = 1
            end
        end
        count_hash
    end

    def self.genre_count
        counter(@@genres)
    end

    def self.artist_count
        counter(@@artists)
    end

end