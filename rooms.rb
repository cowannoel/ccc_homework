class Room

  attr_reader :theme

  def initialize(theme)
    @theme = theme
    @guests = []
    @songs = []
  end


  def guest_count()
    return @guests.count()
  end


  def check_in_guest(name)
    @guests << name
  end


  def check_out_guest(name)
    index = @guests.index(name)
    @guests.slice!(index, 1)
  end


  def song_count()
    return @songs.count()
  end


  def add_song_to_room(title)
    @songs << title
  end



end
