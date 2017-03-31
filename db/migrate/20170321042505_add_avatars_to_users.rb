class AddAvatarsToUsers < ActiveRecord::Migration[5.0]
  def self.up
    add_attachment :users
    end

  def self.down
    remove_attachment :users
  end
end
