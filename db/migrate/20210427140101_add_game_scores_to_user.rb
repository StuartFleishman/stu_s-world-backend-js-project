class AddGameScoresToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :game_scores, :integer 
  end
end
