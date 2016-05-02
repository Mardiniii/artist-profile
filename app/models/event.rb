# == Schema Information
#
# Table name: events
#
#  id                 :integer          not null, primary key
#  event_date         :datetime
#  title              :string
#  start_hour         :time
#  end_hour           :time
#  location           :string
#  description        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Event < ActiveRecord::Base
  scope :reversed, -> { order 'created_at DESC' }

  has_attached_file :image, styles: { medium: "570x330#", thumb: "100x100#", home_size: "495x330#" }, default_url: "http://i592.photobucket.com/albums/tt5/Mardini03/imagen-no-disponible.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :title, :event_date, :start_hour, :end_hour, :location, :description, :image, presence: { message: "Todos los campos son obligatorios"}
  validates :description, length: { maximum: 145,
    too_long: "%{count} caracteres es el máximo permitido" }
end
