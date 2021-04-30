class DropGamesScoresFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :game_scores, :integer
  end
end
