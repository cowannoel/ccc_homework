require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guests")
require_relative("../rooms")

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Scarlett")

  end

  def test_can_create_a_guest()
    assert_equal(Guest, @guest.class)
  end


  def test_guest_has_name()
    assert_equal("Scarlett", @guest.name)
  end






end
