class AddMusicTrackIdToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :music_track_id, :integer
  end
end
