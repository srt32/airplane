require './lib/row'

class Plane

  attr_accessor :rows

  def initialize(num_rows)
    @rows = create_rows(num_rows)
  end

  def total_seats
    rows.flat_map(&:seats).count
  end

private

  def create_rows(count)
    rows = count.times.map do |n|
      Row.new(n + 1)
    end
  end

end
