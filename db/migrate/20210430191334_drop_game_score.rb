class DropGameScore < ActiveRecord::Migration[6.1]
  def change
    drop_table :game_scores
  end
end
