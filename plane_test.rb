require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './plane'

class PlaneTest < Minitest::Test

  attr_reader :num_rows,
              :plane

  def setup
    @num_rows = 30
    @plane = Plane.new(num_rows)
  end

  def test_created_with_rows
    assert_equal num_rows, plane.rows.count
  end

  def test_first_row_is_correct
    first_row = [:A1,
                 :B1,
                 :C1,
                 :D1,
                 :E1,
                 :F1]
    assert_equal first_row, plane.rows.first.seats.map(&:position)
  end

  def test_last_row_is_correct
    last_row = [:A30,
                 :B30,
                 :C30,
                 :D30,
                 :E30,
                 :F30]
    assert_equal last_row, plane.rows.last.seats.map(&:position)
  end

  def test_correct_number_total_seats
    correct_num = 30 * 6
    assert_equal correct_num, plane.total_seats
  end

end
