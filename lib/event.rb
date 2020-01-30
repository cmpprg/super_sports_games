require "./lib/standard_deviation"

class Event
  attr_reader :name, :ages

  def initialize(sport_name, ages_array)
    @name = sport_name
    @ages = ages_array
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    @ages.sum / @ages.length.to_f
  end

  def standard_deviation_age
    standard_deviation(@ages)
  end

end
