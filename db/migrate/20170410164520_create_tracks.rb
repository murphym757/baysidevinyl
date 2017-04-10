class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :artist
      t.string :album
      t.string :song
      t.string :genre
      t.string :year

      t.timestamps
    end
  end
end
