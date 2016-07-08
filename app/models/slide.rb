# == Schema Information
#
# Table name: slides
#
#  id                 :integer          not null, primary key
#  first_text         :string
#  second_text        :text
#  button_content     :string
#  button_link        :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Slide < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "300x150#", thumb: "100X100#", large: "1163x669<", extra_large: "1170x360#" }, default_url: "http://i592.photobucket.com/albums/tt5/Mardini03/imagen-no-disponible.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :first_text, :second_text, :button_content, :button_link, presence: { message: "Todos los campos son obligatorios"}
end
