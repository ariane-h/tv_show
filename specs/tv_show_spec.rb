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

  def test_set_show_name
    @tvshow1.set_show_name("Friends")
    assert_equal("Friends", @tvshow1.show_name)
  end

  def test_set_network
    @tvshow1.set_network("Fox")
    assert_equal("Fox", @tvshow1.network)
  end

  def test_set_run_time
    @tvshow1.set_run_time(60)
    assert_equal(60, @tvshow1.run_time)
  end

  def test_add_character
    @tvshow1.characters = @tvshow1.add_character("Pippin")
    assert_equal(4, @tvshow1.characters.count)
  end

end
