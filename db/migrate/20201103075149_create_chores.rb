class CreateChores < ActiveRecord::Migration[6.0]
  def change
    create_table :chores do |t|
      t.string :title
      t.string :desc
      t.integer :frequency
      t.integer :points_gain
      t.integer :points_price
      t.integer :room_id
      

      t.timestamps
    end
  end
end
