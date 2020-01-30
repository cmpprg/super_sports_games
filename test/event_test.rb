require "minitest/autorun"
require "minitest/pride"
require "./lib/event"

class TestEvent < Minitest::Test

  def setup
    @event = Event.new("Curling", [24, 30, 18, 20, 41])
  end

  def test_that_it_exists
    assert_instance_of Event, @event
  end

  def test_has_a_name
    assert_equal "Curling", @event.name
  end

  def test_can_call_to_ages_variable
    assert_equal [24, 30, 18, 20, 41], @event.ages
  end

end

# pry(main)> event.max_age
# #=> 41
#
# pry(main)> event.min_age
# #=> 18
#
# pry(main)> event.average_age
# #=> 26.6
#
# pry(main)> event.standard_deviation_age
# #=> 8.28
