class Board < ApplicationRecord
  has_many :cells

  def map
    empty_map = []
    size.times do
      empty_map << []
      size.times do
        empty_map.last << []
      end
    end

    cells.each.with_object(empty_map) do |cell, map|
      map[cell.x_position][cell.y_position] = cell.filled ? "cell-filled" : "cell-empty"
    end
  end

  def as_json
    {
      id: id,
      size: "#{size} by #{size}",
      completed: completed,
      cells: map
    }
  end
end
