require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../rooms")
require_relative("../songs")
require_relative("../guests")

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("Blue Room", 10)
    @room2 = Room.new("Neon Room", 20)
    @guest1 = Guest.new("Scarlett", 10)
    @guest2 = Guest.new("Bill", 20)
    @guest3 = Guest.new("Akiko", 30)

    @song1 = Song.new("Walk This Way")
    @song2 = Song.new("My Addidas")
    @song3 = Song.new("King of Rock")
  end


  def test_can_create_a_room
    assert_equal(Room, @room1.class())
  end


  def test_room_starts_with_no_guests()
    assert_equal(0, @room1.guest_count())
  end


  def test_check_guest_into_room()
    @room1.check_in_guest(@guest3)
    assert_equal(1, @room1.guest_count())
  end


  def test_check_out_guest()
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_in_guest(@guest3)
    @room1.check_out_guest(@guest1)
    assert_equal(2, @room1.guest_count())
  end

  def test_room_starts_with_no_songs()
    assert_equal(0, @room1.song_count())
  end


  def test_add_song_to_room()
    @room1.add_song_to_room(@song1)
    assert_equal(1, @room1.song_count())
  end


  def test_check_room_capacity()
    assert_equal(20, @room2.capacity)
  end


  def test_room_has_enough_capacity__returns_true()
    assert_equal(true, @room2.room_has_enough_capacity?(@guest1))
  end


  def test_room_has_enough_capacity__returns_false()
    assert_equal(false, @room1.room_has_enough_capacity?(@guest3))
  end

end
