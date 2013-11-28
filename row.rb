require './seat'

class Row

  attr_reader :seats

  def initialize(row_num)
    @seats = generate_row(row_num)
  end

private

  def generate_row(row_num)
    row = (:A..:F).to_a.map do |letter|
      seat = Seat.new
      seat.letter = letter
      seat.row = row_num
      seat
    end
  end

end
