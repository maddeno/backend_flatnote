class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :description
      t.integer :urgency
      t.string :status
      t.string :date
      t.string :time
      t.integer :task_id
      t.integer :user_id

      t.timestamps
    end
  end
end
