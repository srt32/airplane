class BoardingSimulator

  attr_reader :passengers
  attr_accessor :available_seats

  def initialize
    plane = Plane.new(30)
    @passengers = PassengerGenerator.new(plane).generate_passengers.reverse
    @available_seats = plane.rows.flat_map(&:seats)
  end

  def board(passenger)
    seat = best_available_seat_with_type(passenger.seat_preference)
    passenger.seat = seat
    passenger.status = :onboard
    available_seats.delete(seat)
    seat
  end

private

  def best_available_seat_with_type(seat_type)
    matching_seats = available_seats.select{ |s| s.type == seat_type }
    best_matching_seat = matching_seats.min_by{ |seat| seat.row }
  end

end
