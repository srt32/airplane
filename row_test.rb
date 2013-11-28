require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './row'

class RowTest < Minitest::Test

  attr_reader :row

  def setup
    @row = Row.new(1)
  end

  def test_intitialized_with_6_seats
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

  def test_created_with_row_number
    first_seat = row.seats.first
    assert_equal 1, first_seat.row
  end

end
