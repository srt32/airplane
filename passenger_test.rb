require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './passenger'

class PassengerTest < Minitest::Test

  attr_reader :passenger

  def setup
    @passenger = Passenger.new
  end

  def test_default_seat_preference
    assert_equal :indifferent, passenger.seat_preference
  end

  def test_seat_preference_attribute
    passenger.seat_preference = :window
    assert_equal :window, passenger.seat_preference
  end

  def test_boarding_position_attribute
    passenger.boarding_position = 1
    assert_equal 1, passenger.boarding_position
  end

  def test_seat_attribute_defaults_to_nil
    refute passenger.seat
  end

  def test_status_defaults_to_unknown
    assert_equal :unknown, passenger.status
  end

end
