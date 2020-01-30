require "minitest/autorun"
require "minitest/pride"
require "./lib/event"

class TestEvent < Minitest::Test
  def test_that_it_exists
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_instance_of Event, event
  end

  def test_has_a_name
    event = Event.new("Curling", [24, 30, 18, 20, 41])

    assert_equal "Curling", event.name
  end
end

# pry(main)> event.name
# #=> "Curling"
#
# pry(main)> event.ages
# #=> [24, 30, 18, 20, 41]
#
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
