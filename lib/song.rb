require "pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  
    
  def self.all
    @@all
  end

  def self.create
    song = Song.new
    song.save
    song
  end
  
  def self.new_by_name(name)
   song = Song.new
   song.name = name
   song.save
   song
  end
  
  def self.create_by_name(name)
    song = Song.new
    song.name = name
    song.save
    song
    #binding.pry
    end
  
  def self.find_by_name(song)
    @@all.find {|object| object.name == song   }
  end
  
  def self.find_or_create_by_name(name)
    
    find_by_name(name)  || create_by_name(name)
  
  end

  def self.alphabetical
    @@all.sort_by{|instance| instance.name}

  end
  
  def self.new_from_filename(filename)
    
  data << filename.split("-")
  artist_name = data[0]
  name = data[1]
  data
  filename.chomp(".mp3")
  "#{artist_name} - #{name}.mp3"
  binding.pry
   
    
  
  end
  
  


  def save
    self.class.all << self
  end

end