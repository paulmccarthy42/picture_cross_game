class CreateCells < ActiveRecord::Migration[5.1]
  def change
    create_table :cells do |t|
      t.integer :board_id
      t.integer :x_position
      t.integer :y_position
      t.boolean :filled

      t.timestamps
    end
  end
end
