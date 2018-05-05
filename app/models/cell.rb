class Cell < ApplicationRecord
  belongs_to :board

  def as_json
    {
      x_position: x_position,
      y_position: y_position,
      filled: filled
    }
  end
end
