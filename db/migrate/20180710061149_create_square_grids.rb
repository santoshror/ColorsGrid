class CreateSquareGrids < ActiveRecord::Migration[5.1]
  def change
    create_table :square_grids do |t|
       t.integer :user_id
       t.integer :row
       t.integer :column
       t.string :color
       t.timestamps
    end
  end
end
