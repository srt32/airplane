require './seat'

class Row

  attr_reader :seats

  def initialize
    @seats = generate_row
  end

private

  def generate_row
    row = (:A..:F).to_a.map do |letter|
      seat = Seat.new
      seat.letter = letter
      seat
    end
  end

end
