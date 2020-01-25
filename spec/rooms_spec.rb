require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../rooms")
require_relative("../songs")
require_relative("../guests")

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("Blue Room")
    @guest1 = Guest.new("Scarlett")
    @guest2 = Guest.new("Bill")
    @guest3 = Guest.new("Akiko")
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
    @room1.check_out_guest(@guest1)
    assert_equal(1, @room1.guest_count())
  end


end
