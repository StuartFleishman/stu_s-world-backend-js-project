class CreateGameScores < ActiveRecord::Migration[6.1]
  def change
    create_table :game_scores do |t|
      t.integer :user_id 
      t.integer :score
    end
  end
end
