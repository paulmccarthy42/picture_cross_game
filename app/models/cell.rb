class Cell < ApplicationRecord
  belongs_to :board

  def as_json
    {
      id: id,
      x_position: x_position,
      y_position: y_position,
      filled: filled,
      shownFilled: false
    }
  end
end
