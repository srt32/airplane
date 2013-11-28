require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './row'

class RowTest < Minitest::Test

  def test_intitialized_with_6_seats
    row = Row.new
    first_seat = row.seats.first
    assert_equal :window, first_seat.type
    assert_equal [:window,
                  :middle,
                  :aisle,
                  :aisle,
                  :middle,
                  :window],
                  row.seats.map(&:type)
  end


end
