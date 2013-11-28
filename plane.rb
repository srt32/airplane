require './row'

class Plane

  attr_accessor :rows

  def initialize(num_rows)
    @rows = create_rows(num_rows)
  end

private

  def create_rows(count)
    rows = count.times.map do |n|
      Row.new(n + 1)
    end
  end

end
