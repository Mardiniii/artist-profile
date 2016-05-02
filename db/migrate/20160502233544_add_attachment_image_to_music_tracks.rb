class AddAttachmentImageToMusicTracks < ActiveRecord::Migration
  def self.up
    change_table :music_tracks do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :music_tracks, :image
  end
end
