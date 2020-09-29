class CreateIncidents < ActiveRecord::Migration[6.0]
  def change
    create_table :incidents do |t|
      t.integer :type
      t.integer :incidents_count, :null => false, :default => 0
      t.text :memo
      t.string :confirmed
      t.timestamps
    end
  end
end
