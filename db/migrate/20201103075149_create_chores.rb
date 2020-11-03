class CreateChores < ActiveRecord::Migration[6.0]
  def change
    create_table :chores do |t|
      t.string :title
      t.string :desc
      t.integer :frequency
      t.datetime :last_completed, default:1.day.ago
      t.integer :points_gain
      t.integer :points_price
      t.integer :room_id
      t.boolean :currently_assigned, default: false

      t.timestamps
    end
  end
end
