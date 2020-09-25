class CreateIncidents < ActiveRecord::Migration[6.0]
  def change
    create_table :incidents do |t|
      t.string :name
      t.string :type
      t.integer :comments_count, :null => false, :default => 0
      t.text :memo
      t.integer :confirmed
      t.timestamps
    end
  end
end
