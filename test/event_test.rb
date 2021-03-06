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

  def test_max_age_method
    assert_equal 41, @event.max_age
  end

  def test_min_age_method
    assert_equal 18, @event.min_age
  end

  def test_average_age_method
    assert_equal 26.6, @event.average_age
  end

  def test_standard_deviation_age_method
    assert_equal 8.28, @event.standard_deviation_age
  end

end
