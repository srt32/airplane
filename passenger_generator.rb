require './passenger'

class PassengerGenerator

  def generate_for(plane)
    plane.total_seats.times.map do |seat|
      passenger = Passenger.new
      passenger.seat_preference = random_seat_type
      passenger
    end
  end

private

  def random_seat_type
    valid_seat_types.sample
  end

  def valid_seat_types
    [:window, :middle, :aisle]
  end

end
