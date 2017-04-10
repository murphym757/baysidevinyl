class AddUserIdToTracks < ActiveRecord::Migration[5.0]
  def change
    add_column :tracks, :user_id, :integer
  end
end
