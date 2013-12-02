class Seat

  attr_accessor :row, :letter

  def position
    (letter.to_s + row.to_s).to_sym
  end

  def type
    letter_type[letter]
  end

  private

  def letter_type
    {
      :A => :window,
      :B => :middle,
      :C => :aisle,
      :D => :aisle,
      :E => :middle,
      :F => :window
    }
  end

end
