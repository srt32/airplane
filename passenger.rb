class Passenger

  attr_accessor :seat_preference,
                :boarding_position

  def initialize
    @seat_preference = :indifferent
  end

end
