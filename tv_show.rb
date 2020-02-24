class TvShow

  attr_accessor :show_name, :network, :characters, :run_time

  def initialize(show_name, network, characters, run_time)
    @show_name = show_name
    @network = network
    @characters = characters
    @run_time = run_time
  end

end
