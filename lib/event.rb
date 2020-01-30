require "./lib/standard_deviation"

class Event
  attr_reader :name :ages
  def initialize(sport_name, ages_array)
    @name = sport_name
    @ages = ages_array
  end

end
