class AddUserIdToVinyls < ActiveRecord::Migration[5.0]
  def change
    add_column :vinyls, :user_id, :integer
  end
end
