# == Schema Information
#
# Table name: music_tracks
#
#  id         :integer          not null, primary key
#  name       :string
#  author     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MusicTrack < ActiveRecord::Base
end
