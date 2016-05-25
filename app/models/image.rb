# == Schema Information
#
# Table name: images
#
#  id                 :integer          not null, primary key
#  gallery_id         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#

class Image < ActiveRecord::Base
  belongs_to :gallery

  has_attached_file :photo, styles: { medium: "300x150#", thumb: "100X100#", large: "560x290#" }, default_url: "http://i592.photobucket.com/albums/tt5/Mardini03/imagen-no-disponible.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
