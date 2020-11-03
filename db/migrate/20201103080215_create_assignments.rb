class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.integer :chore_id
      t.integer :user_id
      t.datetime :due_date
      t.datetime :completed_date
      t.integer :assigner_id

      t.timestamps
    end
  end
end
