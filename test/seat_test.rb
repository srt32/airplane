require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/seat'

class SeatTest < Minitest::Test

  def test_can_be_assigned_row_number
    seat = Seat.new
    seat.row = 1
    assert_equal 1, seat.row
  end

  def test_can_be_assigned_seat_letter
    seat = Seat.new
    seat.letter = :A
    assert_equal :A, seat.letter
  end

  def test_can_return_seat_position
    seat = Seat.new
    seat.row = 10
    seat.letter = :A
    assert_equal :A10, seat.position
  end

  def test_return_type_given_window_position
    seat = Seat.new
    seat.row = 10
    seat.letter = :A
    assert_equal :window, seat.type
    seat.letter = :F
    assert_equal :window, seat.type
  end

  def test_return_type_given_middle_position
    seat = Seat.new
    seat.row = 10
    seat.letter = :B
    assert_equal :middle, seat.type
    seat.letter = :E
    assert_equal :middle, seat.type
  end

  def test_return_type_given_aisle_position
    seat = Seat.new
    seat.row = 10
    seat.letter = :C
    assert_equal :aisle, seat.type
    seat.letter = :D
    assert_equal :aisle, seat.type
  end

end
