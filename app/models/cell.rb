class Cell < ApplicationRecord
  belongs_to :board

  def as_json
    {
      name: name,
      id: id,
      x_position: x_position,
      y_position: y_position,
      filled: filled,
      shownFilled: false
    }
  end
end
