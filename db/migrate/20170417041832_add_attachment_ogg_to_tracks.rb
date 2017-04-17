class AddAttachmentOggToTracks < ActiveRecord::Migration
  def self.up
    change_table :tracks do |t|
      t.attachment :ogg
    end
  end

  def self.down
    remove_attachment :tracks, :ogg
  end
end
