class TvShow

  attr_accessor :show_name, :network, :characters, :run_time

  def initialize(show_name, network, characters, run_time)
    @show_name = show_name
    @network = network
    @characters = characters
    @run_time = run_time
  end

  def set_show_name(new_name)
    @show_name = new_name
  end

  def set_network(new_network)
    @network = new_network
  end

  def set_run_time(new_run_time)
    @run_time = new_run_time
  end

  def add_character(new_character)
  characters.push(new_character)
  end

end
