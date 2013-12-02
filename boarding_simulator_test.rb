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
    @simulator = BoardingSimulator.new
  end

  def test_passenger_boarding_positions_are_in_ascending_order
    assert_equal 1, simulator.passengers[0].boarding_position
    assert_equal 2, simulator.passengers[1].boarding_position
    assert_equal 180, simulator.passengers[-1].boarding_position
  end

  def test_gives_first_passenger_seat_of_choice
    first_passenger = simulator.passengers.first
    passenger_seat_pref = first_passenger.seat_preference
    chosen_seat = simulator.board(first_passenger)
    assert_equal passenger_seat_pref, chosen_seat.type
    assert_equal 1, chosen_seat.row
    assert_equal chosen_seat.position, first_passenger.seat.position
    refute simulator.available_seats.include?(chosen_seat)
  end

  def test_passenger_marked_as_boarded
    first_passenger = simulator.passengers.first
    simulator.board(first_passenger)
    assert_equal :onboard, first_passenger.status
  end

end
