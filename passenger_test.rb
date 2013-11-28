require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './passenger'

class PassengerTest < Minitest::Test

  attr_reader :passenger

  def setup
    @passenger = Passenger.new
  end

  def test_preference_attribute
    passenger.preference = :window
    assert_equal :window, passenger.preference
  end

  def test_boarding_position_attribute
    passenger.boarding_position = 1
    assert_equal 1, passenger.boarding_position
  end

end
