# == Schema Information
#
# Table name: images
#
#  id                 :integer          not null, primary key
#  gallery_id         :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Image < ActiveRecord::Base
  belongs_to :gallery

  has_attached_file :image, styles: { medium: "300x150#", thumb: "100X100#", large: "560x290#" }, default_url: "http://i592.photobucket.com/albums/tt5/Mardini03/imagen-no-disponible.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
