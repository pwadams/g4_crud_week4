class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :Date
      t.string :Location
      t.text :Description
      t.integer :Capacity
      t.boolean :Requires_id

      t.timestamps
    end
  end
end
