require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './passenger_generator'
require './plane'
require './passenger'

class PassengerGeneratorTest < Minitest::Test

  attr_reader :pg,
              :passengers,
              :plane

  def setup
    @plane = Plane.new(30)
    @pg = PassengerGenerator.new(plane)
    @passengers = pg.generate_passengers
  end

  def test_creates_correct_number_of_seats_for_plane
    assert_kind_of Passenger, passengers.first
    assert_equal plane.total_seats, passengers.count
  end

  def test_assigns_passenger_seat_preferences
    seat_prefs_chosen = passengers.map(&:seat_preference)[0..4]
    more_passengers = pg.generate_passengers
    second_seats_prefs_chosen = more_passengers.map(&:seat_preference)[0..4]
    alikes = seat_prefs_chosen.zip(second_seats_prefs_chosen).select do |pair|
      pair.first == pair.last
    end
    refute_equal 5, alikes.count
  end

  def test_assigns_passenger_boarding_position
    assigned_boarding_positions = passengers.map(&:boarding_position)
    assert_equal (1..plane.total_seats).to_a, assigned_boarding_positions.sort
  end
  # NOTE: boarding_postion is not assigned randomly, it is assigned in order

end
