require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../songs")
require_relative("../rooms")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Walk This Way")
    @song2 = Song.new("My Addidas")
    @song3 = Song.new("King of Rock")
  end


  def test_song_has_title
    assert_equal("King of Rock", @song3.title())
  end



end
