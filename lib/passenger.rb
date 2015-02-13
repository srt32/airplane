class Passenger

  attr_accessor :seat_preference,
                :boarding_position,
                :seat,
                :status

  def initialize
    foo = true

    @seat_preference = :indifferent
    @status = :unknown
  end
  
end
