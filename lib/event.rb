require "./lib/standard_deviation"

class Event
  attr_reader :name
  def initialize(sport_name, ages_array)
    @name = sport_name
  end

end
