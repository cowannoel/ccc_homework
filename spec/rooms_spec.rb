require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../rooms")
require_relative("../songs")
require_relative("../guests")

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("Blue Room")
    @room2 = Room.new("Neon Room")
    @guest1 = Guest.new("Scarlett")
    @guest2 = Guest.new("Bill")
    @guest3 = Guest.new("Akiko")

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
    assert_equal(0, @room1.song_count)
  end


  def test_add_song_to_room()
    @room1.add_song_to_room(@song1)
    assert_equal(1, @room1.song_count())
  end






end
