class RemoveVideo < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :video_id, :integer
  end
end
