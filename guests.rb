class Guest

  attr_reader :name, :group_size

  def initialize(name, group_size)
    @name = name
    @group_size = group_size
  end


  def guest_group_size()
    return @guest1.group_size()
  end


end
