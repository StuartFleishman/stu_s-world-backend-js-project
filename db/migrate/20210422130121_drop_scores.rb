class DropScores < ActiveRecord::Migration[6.1]
  def change
    drop_table :scores do |t|
      t.integer :user_id 
      t.integer :score 
      t.string :name
      t.timestamps
    end
  end
end
