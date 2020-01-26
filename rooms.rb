class Room

  attr_reader :theme, :capacity

  def initialize(theme, capacity)
    @theme = theme
    @capacity = capacity
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


  def check_room_capacity()
    return @room1.room_capacity
  end


  def room_has_enough_capacity?(guest1)
    return guest1.group_size < 20
  end


end
