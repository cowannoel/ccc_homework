require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guests")
require_relative("../rooms")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Scarlett", 10)
  end

  def test_can_create_a_guest()
    assert_equal(Guest, @guest1.class)
  end


  def test_guest_has_name()
    assert_equal("Scarlett", @guest1.name)
  end


  def test_guest_group_size()
    assert_equal(10, @guest1.group_size)
  end



end
