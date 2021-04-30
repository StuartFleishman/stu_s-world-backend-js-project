class DropGameScoreUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :game_score, :integer
  end
end
