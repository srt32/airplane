require './lib/passenger'

class PassengerGenerator

  attr_reader :plane,
              :available_seats

  def initialize(plane)
    @plane = plane
    @available_seats = calc_seats
  end

  def generate_passengers
    plane.total_seats.times.map do |seat|
      create_passenger
    end
  end

private

  def create_passenger
    passenger = Passenger.new
    passenger.seat_preference = random_seat_type
    passenger.boarding_position = random_boarding_position
    passenger
  end

  def random_boarding_position
    available_seats.pop
  end

  def calc_seats
    (1..plane.total_seats).to_a
  end

  def random_seat_type
    valid_seat_types.sample
  end

  def valid_seat_types
    [:window, :middle, :aisle]
  end

end
