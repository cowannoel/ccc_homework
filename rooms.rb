class Room

  attr_reader :name

  def initialize(name)
    @name = name
    @guests = []
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



end
