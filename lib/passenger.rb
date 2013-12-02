class Passenger

  attr_accessor :seat_preference,
                :boarding_position,
                :seat,
                :status

  def initialize
    @seat_preference = :indifferent
    @status = :unknown
  end

end
