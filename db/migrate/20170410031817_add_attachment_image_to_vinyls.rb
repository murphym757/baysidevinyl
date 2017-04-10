class AddAttachmentImageToVinyls < ActiveRecord::Migration
  def self.up
    change_table :vinyls do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :vinyls, :image
  end
end
