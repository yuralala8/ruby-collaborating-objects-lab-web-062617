class Artist

  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if @@all.find { |artist| artist.name == name }.nil?
      artist = Artist.new(name)
      artist.save
      artist
    else
      @@all.find { |artist| artist.name == name }
    end
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end
