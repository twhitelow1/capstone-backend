class CreateHomes < ActiveRecord::Migration[6.0]
  def change
    create_table :homes do |t|
      t.integer :user_id
      t.integer :addr_number
      t.string :addr_street
      t.string :addr_unit
      t.string :addr_city
      t.string :addr_state
      t.string :addr_zip
      t.string :home_type

      t.timestamps
    end
  end
end
