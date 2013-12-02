require 'pry'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './boarding_simulator'
require './plane'
require './passenger_generator'

class BoardingSimulatorTest < Minitest::Test

  attr_reader :simulator

  def setup
    plane = Plane.new(30)
    passengers = PassengerGenerator.new.generate_for(plane)
    @simulator = BoardingSimulator.new(plane, passengers)
  end

  def test_gives_first_passenger_seat_of_choice
    binding.pry
    first_passenger = simulator.passengers.first
    assert_equal 1, first_passenger.boarding_position
  end

end
