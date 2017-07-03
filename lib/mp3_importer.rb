require 'pry'

class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select { |f| f[-3..-1] ==
    "mp3" }
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
    # Artist.all
  end


end
