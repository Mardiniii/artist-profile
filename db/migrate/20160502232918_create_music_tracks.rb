class CreateMusicTracks < ActiveRecord::Migration
  def change
    create_table :music_tracks do |t|
      t.string :name
      t.string :author

      t.timestamps null: false
    end
  end
end
