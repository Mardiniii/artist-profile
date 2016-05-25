# == Schema Information
#
# Table name: music_tracks
#
#  id                 :integer          not null, primary key
#  name               :string
#  author             :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class MusicTrack < ActiveRecord::Base
  has_many :tracks, dependent: :destroy
  accepts_nested_attributes_for :tracks, :limit => 50, :reject_if => :all_blank, allow_destroy: true

  has_attached_file :image, styles: { medium: "300x150#", thumb: "100X100#", large: "560x290#" }, default_url: "http://i592.photobucket.com/albums/tt5/Mardini03/imagen-no-disponible.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :name, :author, :image, presence: { message: "Todos los campos son obligatorios"}

  validates_associated :tracks
end
