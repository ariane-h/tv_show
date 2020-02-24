require('minitest/autorun')
require('minitest/reporters')
require_relative('../tv_show')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTvShow < Minitest::Test
  def setup()
    @tvshow1 = TvShow.new("The Walking Dead", "AMC", ["Carl","Rick","Shane"], 40)
  end

  def test_get_show_name
    assert_equal("The Walking Dead", @tvshow1.show_name)
  end

  def test_get_network
    assert_equal("AMC", @tvshow1.network)
  end

  def test_get_characters
    assert_equal(["Carl","Rick","Shane"], @tvshow1.characters)
  end

  def test_get_run_time
    assert_equal(40, @tvshow1.run_time)
  end

end
