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

end
